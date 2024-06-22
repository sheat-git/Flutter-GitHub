import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github/providers/languages.dart';
import 'package:github/providers/search_histories.dart';
import 'package:github/providers/spoken_languages.dart';
import 'package:github/providers/trending_repositories.dart';
import 'package:github/router/routes/bookmarks.dart';
import 'package:github/router/routes/home.dart';
import 'package:github/router/routes/search/repositories.dart';
import 'package:github/router/routes/search/search.dart';
import 'package:github/router/routes/search/users.dart';
import 'package:github/router/routes/settings.dart';
import 'package:github/services/github_trending/github_trending.dart';
import 'package:github/services/github_trending/responses/languages.dart';
import 'package:github/services/github_trending/responses/spoken_languages.dart';
import 'package:github/ui/components/chips_bar.dart';
import 'package:github/ui/components/error_body.dart';
import 'package:github/ui/components/loading_body.dart';
import 'package:github/ui/components/repository_list_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final since = useState(TrendingSince.daily);
    final language = useState<Language?>(null);
    final spokenLanguage = useState<SpokenLanguage?>(null);

    final languages = ref.watch(languagesProvider);
    final spokenLanguages = ref.watch(spokenLanguagesProvider);

    final repositoriesProvider = trendingRepositoriesProvider(
      since: since.value,
      language: language.value,
      spokenLanguage: spokenLanguage.value,
    );
    final repositories = ref.watch(repositoriesProvider);

    // 下スクロールでFABを隠す
    final fabIsHidden = useState(false);
    final scrollController = useScrollController();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        fabIsHidden.value = true;
      } else {
        fabIsHidden.value = false;
      }
    });
    // 引数が変更され、データ再取得時はFABを再表示する
    useEffect(() {
      fabIsHidden.value = false;
      return null;
    }, [since, language, spokenLanguage]);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.trending),
        actions: [
          IconButton(
            onPressed: () => const BookmarksRoute().push(context),
            icon: const Icon(Symbols.bookmarks, semanticLabel: 'Bookmarks'),
          ),
          IconButton(
            onPressed: () => const SettingsRoute().push(context),
            icon: const Icon(Symbols.settings, semanticLabel: 'Settings'),
          ),
        ],
        // 条件を変更するChipを表示するBar
        bottom: ChipsBar(children: [
          // since
          _buildSinceChip(context, since),
          // language
          if (languages.hasValue)
            _buildSearchableFilterChip(
              label: AppLocalizations.of(context)!.language,
              items: languages.requireValue,
              value: language,
              suggestionFilter: (text, l) =>
                  l.title.toLowerCase().contains(text) ||
                  l.name.toLowerCase().contains(text),
              titleBuilder: (l) => Text(l.title),
              leadingBuilder: (l) => DecoratedBox(
                decoration: BoxDecoration(
                  color: l.color.toColor,
                  shape: BoxShape.circle,
                ),
                child: const SizedBox.square(dimension: 12),
              ),
            ),
          // spoken language
          if (spokenLanguages.hasValue)
            _buildSearchableFilterChip(
              label: AppLocalizations.of(context)!.spokenLanguage,
              items: spokenLanguages.requireValue,
              value: spokenLanguage,
              suggestionFilter: (text, l) =>
                  l.title.toLowerCase().contains(text) ||
                  l.name.toLowerCase().contains(text),
              titleBuilder: (l) => Text(l.title),
            ),
        ]),
      ),
      body: repositories.when(
        data: (repositories) => repositories.isEmpty
            // データがない場合はメッセージを表示
            ? Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Text(AppLocalizations.of(context)!.noResults),
                ),
              )
            : RefreshIndicator(
                onRefresh: () => ref.refresh(repositoriesProvider.future),
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: repositories.length,
                  itemBuilder: (context, index) {
                    final repository = repositories[index];
                    return RepositoryListItem(
                      owner: repository.author,
                      ownerAvatarUrl: repository.avatar.toString(),
                      name: repository.name,
                      description: repository.description,
                      stars: since.value.localizeStars(
                        context,
                        repository.currentPeriodStars,
                      ),
                      language: repository.language,
                      languageColor: repository.languageColor,
                    );
                  },
                ),
              ),
        error: (error, _) => ErrorBody(
          error: error,
          onRetry: () {
            ref.read(repositoriesProvider.notifier).reload();
            if (!languages.hasValue) {
              ref.invalidate(languagesProvider);
            }
            if (!spokenLanguages.hasValue) {
              ref.invalidate(spokenLanguagesProvider);
            }
          },
        ),
        loading: () => const LoadingBody(),
      ),
      floatingActionButton: AnimatedScale(
        alignment: Alignment.bottomRight,
        // FABが隠れるときはスケールを0にして非表示にする
        scale: fabIsHidden.value ? 0 : 1,
        duration: Durations.medium3,
        child: _buildSearchFab(context, ref),
      ),
    );
  }

  Widget _buildSinceChip(
    BuildContext context,
    ValueNotifier<TrendingSince> since,
  ) =>
      MenuAnchor(
        menuChildren: TrendingSince.values
            .map((s) => MenuItemButton(
                  onPressed: () => since.value = s,
                  leadingIcon: Icon(
                    s == since.value ? Symbols.check : null,
                    size: 16,
                  ),
                  child: Text(s.localize(context)),
                ))
            .toList(),
        builder: (context, controller, _) => ActionChip(
          onPressed: () =>
              controller.isOpen ? controller.close() : controller.open(),
          visualDensity: VisualDensity.compact,
          label: Text(
            since.value.localize(context),
          ),
        ),
      );

  Widget _buildSearchableFilterChip<T>({
    required String label,
    required List<T> items,
    required ValueNotifier<T?> value,
    required bool Function(String text, T item) suggestionFilter,
    required Widget Function(T) titleBuilder,
    Widget Function(T)? leadingBuilder,
  }) {
    final currentValue = value.value;
    final searchController = useSearchController();

    return SearchAnchor(
      searchController: searchController,
      builder: (context, controller) => RawChip(
        onPressed: () => controller.isOpen
            ? controller.closeView(null)
            : controller.openView(),
        onDeleted: currentValue != null ? () => value.value = null : null,
        visualDensity: VisualDensity.compact,
        avatar: const Icon(Symbols.filter_list),
        label: currentValue != null ? titleBuilder(currentValue) : Text(label),
      ),
      viewOnSubmitted: (text) {
        // 結果が1つだった場合は選択して閉じる
        text = text.toLowerCase();
        final results =
            items.where((item) => suggestionFilter(text, item)).toList();
        if (results.length == 1) {
          value.value = results.single;
          searchController.closeView(null);
        }
      },
      suggestionsBuilder: (context, controller) {
        // 小文字で比較する
        final text = controller.text.toLowerCase();
        // 破壊的操作をするためコピー
        List<T> suggestions = [...items];
        // 選択中のものがあれば先頭に持ってくる
        if (currentValue != null) {
          suggestions.remove(currentValue);
          suggestions.insert(0, currentValue);
        }
        // テキストが入力されている場合はフィルタリング
        if (text.isNotEmpty) {
          suggestions.retainWhere((item) => suggestionFilter(text, item));
        }
        return suggestions.map((suggestion) => ListTile(
              onTap: () {
                if (suggestion != currentValue) {
                  value.value = suggestion;
                } else {
                  value.value = null;
                }
                controller.closeView(null);
              },
              // 結果が1つだった場合は選択
              selected: suggestions.length == 1,
              visualDensity: VisualDensity.compact,
              trailing:
                  suggestion == value.value ? const Icon(Symbols.check) : null,
              title: titleBuilder(suggestion),
              leading: leadingBuilder?.call(suggestion),
            ));
      },
    );
  }

  Widget _buildSearchFab(BuildContext context, WidgetRef ref) => SearchAnchor(
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
        viewOnSubmitted: (query) {
          if (query.isNotEmpty) {
            ref.read(searchHistoriesProvider.notifier).add(query);
            SearchRoute(query: query).push(context);
          }
        },
        suggestionsBuilder: (context, controller) async {
          if (controller.text.isEmpty) {
            final histories = await ref.read(searchHistoriesProvider.future);
            return histories.keys.map(
              (id) => Consumer(
                builder: (context, ref, _) {
                  final history = ref.watch(searchHistoriesProvider
                      .select((state) => state.valueOrNull?[id]));
                  return history == null
                      ? const SizedBox.shrink()
                      : Dismissible(
                          key: ValueKey(id),
                          direction: DismissDirection.endToStart,
                          background: Container(
                            color: Theme.of(context).colorScheme.error,
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(
                              Symbols.delete,
                              color: Theme.of(context).colorScheme.onError,
                            ),
                          ),
                          onDismissed: (_) => ref
                              .read(searchHistoriesProvider.notifier)
                              .remove(id),
                          child: ListTile(
                            onTap: () => controller.text = history.query,
                            title: Text(history.query),
                            trailing: const Icon(Symbols.arrow_insert),
                          ),
                        );
                },
              ),
            );
          }
          return [
            // リポジトリ
            ListTile(
              onTap: () {
                final query = controller.text;
                ref.read(searchHistoriesProvider.notifier).add(query);
                SearchRepositoriesRoute(query: query).push(context);
              },
              leading: const Icon(Symbols.book),
              title: Text(AppLocalizations.of(context)!
                  .repositoriesWithQ(controller.text)),
            ),
            // ユーザー
            ListTile(
              onTap: () {
                final query = controller.text;
                ref.read(searchHistoriesProvider.notifier).add(query);
                SearchUsersRoute(query: query).push(context);
              },
              leading: const Icon(Symbols.person),
              title: Text(
                  AppLocalizations.of(context)!.peopleWithQ(controller.text)),
            ),
          ];
        },
        builder: (context, controller) => FloatingActionButton.extended(
          onPressed: () => controller.isOpen
              ? controller.closeView(null)
              : controller.openView(),
          icon: const Icon(Symbols.search),
          label: Text(AppLocalizations.of(context)!.search),
        ),
      );
}

extension _LocalizeTrendiingSince on TrendingSince {
  String localize(BuildContext context) => switch (this) {
        TrendingSince.daily => AppLocalizations.of(context)!.today,
        TrendingSince.weekly => AppLocalizations.of(context)!.thisWeek,
        TrendingSince.monthly => AppLocalizations.of(context)!.thisMonth,
      };

  String localizeStars(BuildContext context, int stars) => switch (this) {
        TrendingSince.daily => AppLocalizations.of(context)!.nStarsToday(stars),
        TrendingSince.weekly =>
          AppLocalizations.of(context)!.nStarsThisWeek(stars),
        TrendingSince.monthly =>
          AppLocalizations.of(context)!.nStarsThisMonth(stars),
      };
}
