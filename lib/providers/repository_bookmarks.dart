import 'package:github/services/database/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_bookmarks.g.dart';

@riverpod
class RepositoryBookmarks extends _$RepositoryBookmarks {
  @override
  Future<List<RepositoryBookmark>> build() async {
    final db = ref.read(dbProvider);
    return db.repositoryBookmarksDao.getAll();
  }

  void reload() {
    state =
        const AsyncLoading<List<RepositoryBookmark>>().copyWithPrevious(state);
    ref.invalidateSelf();
  }
}
