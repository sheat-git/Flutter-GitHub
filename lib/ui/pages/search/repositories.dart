import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github/providers/search_repositories.dart';
import 'package:github/services/github/github.dart';
import 'package:github/ui/components/chips_bar.dart';
import 'package:github/ui/components/repository_list_item.dart';
import 'package:github/ui/components/scroll_pagination.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';

class SearchRepositoriesPage extends HookConsumerWidget {
  final String query;

  const SearchRepositoriesPage({
    super.key,
    required this.query,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sort = useState(_Sort.bestMatch);

    SearchRepositoriesProvider provider(int index) =>
        searchRepositoriesProvider(
          query: query,
          sort: sort.value.sort,
          order: sort.value.order,
          page: index + 1,
        );

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.repositories),
        bottom: ChipsBar(children: [_buildSortChip(context, sort)]),
      ),
      body: ScrollPagination(
        provider: provider,
        future: (index) => provider(index).future,
        onRetry: (index) => ref.read(provider(index).notifier).reload(),
        itemBuilder: (context, item) => RepositoryListItem(
          id: item.id,
          owner: item.owner?.login,
          ownerAvatarUrl: item.owner?.avatarUrl.toString(),
          name: item.name,
          description: item.description,
          stars: NumberFormat.decimalPattern().format(item.stargazersCount),
          language: item.language,
        ),
        emptyBuilder: (context) => Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Text(AppLocalizations.of(context)!.noResults),
          ),
        ),
      ),
    );
  }

  Widget _buildSortChip(
    BuildContext context,
    ValueNotifier<_Sort> sort,
  ) =>
      MenuAnchor(
        menuChildren: _Sort.values
            .map((s) => MenuItemButton(
                  onPressed: () => sort.value = s,
                  leadingIcon: Icon(
                    s == sort.value ? Symbols.check : null,
                    size: 16,
                  ),
                  child: Text(s.localize(context)),
                ))
            .toList(),
        builder: (context, controller, _) => ActionChip(
          onPressed: () =>
              controller.isOpen ? controller.close() : controller.open(),
          avatar: const Icon(Symbols.sort),
          visualDensity: VisualDensity.compact,
          label: Text(sort.value.localize(context)),
        ),
      );
}

enum _Sort {
  bestMatch(SearchRepositoriesSort.bestMatch, SearchOrder.desc),
  mostStars(SearchRepositoriesSort.stars, SearchOrder.desc),
  fewestStars(SearchRepositoriesSort.stars, SearchOrder.asc),
  mostForks(SearchRepositoriesSort.forks, SearchOrder.desc),
  fewestForks(SearchRepositoriesSort.forks, SearchOrder.asc),
  recentlyUpdated(SearchRepositoriesSort.updated, SearchOrder.desc),
  leastRecentlyUpdated(SearchRepositoriesSort.updated, SearchOrder.asc);

  final SearchRepositoriesSort sort;
  final SearchOrder order;

  const _Sort(this.sort, this.order);

  String localize(BuildContext context) => switch (this) {
        _Sort.bestMatch => AppLocalizations.of(context)!.bestMatch,
        _Sort.mostStars => AppLocalizations.of(context)!.mostStars,
        _Sort.fewestStars => AppLocalizations.of(context)!.fewestStars,
        _Sort.mostForks => AppLocalizations.of(context)!.mostForks,
        _Sort.fewestForks => AppLocalizations.of(context)!.fewestForks,
        _Sort.recentlyUpdated => AppLocalizations.of(context)!.recentlyUpdated,
        _Sort.leastRecentlyUpdated =>
          AppLocalizations.of(context)!.leastRecentlyUpdated,
      };
}
