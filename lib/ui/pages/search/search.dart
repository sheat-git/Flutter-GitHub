import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/providers/search.dart';
import 'package:github/router/routes/home.dart';
import 'package:github/router/routes/search/repositories.dart';
import 'package:github/router/routes/search/users.dart';
import 'package:github/services/github/responses/search/search.dart';
import 'package:github/ui/components/error_body.dart';
import 'package:github/ui/components/list_item.dart';
import 'package:github/ui/components/loading_body.dart';
import 'package:github/ui/components/repository_list_item.dart';
import 'package:github/ui/components/user_list_tile.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';

class SearchPage extends ConsumerWidget {
  final String query;

  const SearchPage({
    super.key,
    required this.query,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = searchProvider(query);
    final search = ref.watch(provider);

    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.searchResults)),
      body: search.when(
        data: (search) {
          // 他の検索にも対応したらここに追加
          final secions = [
            // リポジトリ
            _buildSection(
              context,
              search.repositories,
              title: AppLocalizations.of(context)!.repositories,
              itemBuilder: (repository) => RepositoryListItem(
                id: repository.id,
                owner: repository.owner?.login,
                ownerAvatarUrl: repository.owner?.avatarUrl.toString(),
                name: repository.name,
                description: repository.description,
                stars: NumberFormat.decimalPattern()
                    .format(repository.stargazersCount),
                language: repository.language,
              ),
              onShowMore: () =>
                  SearchRepositoriesRoute(query: query).push(context),
            ),
            // ユーザー
            _buildSection(
              context,
              search.users,
              title: AppLocalizations.of(context)!.users,
              itemBuilder: (user) => UserListTile(user: user),
              onShowMore: () => SearchUsersRoute(query: query).push(context),
            ),
          ];
          return ListView(
            children: List.generate(
              secions.length * 2 - 1,
              (index) => index.isEven
                  ? secions[index ~/ 2]
                  : const SizedBox(height: 24),
              growable: false,
            ),
          );
        },
        error: (error, _) => ErrorBody(
          error: error,
          onRetry: () => ref.read(provider.notifier).reload(),
        ),
        loading: () => const LoadingBody(),
      ),
    );
  }

  Widget _buildSection<T>(
    BuildContext context,
    SearchResponse<T> response, {
    required String title,
    required Widget Function(T) itemBuilder,
    required void Function() onShowMore,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // セクションタイトル
          ListItem(
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          if (response.items.isEmpty)
            ListTile(title: Text(AppLocalizations.of(context)!.noResults))
          else
            for (final item in response.items) itemBuilder(item),
          // 結果が不完全な場合、または全件数よりも少ない場合は「もっと見る」を表示
          if (response.incompleteResults ||
              response.items.length < response.totalCount)
            ListTile(
              onTap: onShowMore,
              dense: true,
              visualDensity: VisualDensity.compact,
              title: Text(
                response.incompleteResults
                    // 不完全な場合は件数を表示しない
                    ? AppLocalizations.of(context)!.showMore
                    : AppLocalizations.of(context)!
                        .showNMore(response.totalCount - response.items.length),
              ),
              textColor: Theme.of(context).colorScheme.primary,
              trailing: const Icon(Symbols.navigate_next),
            ),
        ],
      );
}
