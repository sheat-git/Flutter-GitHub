import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/providers/repositories.dart';
import 'package:github/providers/repository.dart';
import 'package:github/providers/repository_bookmarks.dart';
import 'package:github/ui/components/error_body.dart';
import 'package:github/ui/components/loading_body.dart';
import 'package:github/ui/components/repository_list_item.dart';
import 'package:github/ui/components/scroll_pagination.dart';
import 'package:intl/intl.dart';

class BookmarksPage extends ConsumerWidget {
  const BookmarksPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarks = ref.watch(repositoryBookmarksProvider);

    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.bookmarks)),
      body: bookmarks.when(
        error: (error, _) => ErrorBody(
          error: error,
          onRetry: () =>
              ref.read(repositoryBookmarksProvider.notifier).reload(),
        ),
        loading: () => const LoadingBody(),
        data: (bookmarks) {
          final List<List<int>> ids =
              bookmarks.map((b) => b.id).slices(10).toList();

          RepositoriesProvider provider(int index) =>
              repositoriesProvider(index < ids.length ? ids[index] : []);

          return ScrollPagination(
            provider: provider,
            future: (index) => provider(index).future,
            onRetry: (index) =>
                ref.read(provider(index).notifier).reloadError(),
            onRefresh: (maxIndex) async {
              final bookmarks =
                  await ref.refresh(repositoryBookmarksProvider.future);
              for (final bookmark in bookmarks) {
                ref.invalidate(repositoryProvider(id: bookmark.id));
              }
              for (int i = 1; i <= maxIndex; i++) {
                ref.invalidate(provider(i));
              }
              // ignore: unused_result
              await ref.refresh(provider(0).future);
            },
            itemBuilder: (context, item) => RepositoryListItem(
              id: item.id,
              owner: item.owner.login,
              ownerAvatarUrl: item.owner.avatarUrl.toString(),
              name: item.name,
              description: item.description,
              stars: NumberFormat.decimalPattern().format(item.stargazersCount),
              language: item.language,
            ),
            emptyBuilder: (context) => Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Text(AppLocalizations.of(context)!.noBookmarks),
              ),
            ),
          );
        },
      ),
    );
  }
}
