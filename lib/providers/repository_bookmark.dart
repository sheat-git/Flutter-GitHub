import 'package:github/services/database/database.dart' as d;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_bookmark.g.dart';

@riverpod
class RepositoryBookmark extends _$RepositoryBookmark {
  @override
  Future<d.RepositoryBookmark?> build(int id) async {
    final db = ref.read(d.dbProvider);
    return await db.repositoryBookmarksDao.get(id);
  }

  Future<void> add() => update((previous) async {
        // 登録済みの場合は何もしない
        if (previous != null) return previous;

        final db = ref.read(d.dbProvider);
        return await db.repositoryBookmarksDao.add(id);
      });

  Future<void> remove() => update((previous) async {
        // 未登録の場合は何もしない
        if (previous == null) return null;

        final db = ref.read(d.dbProvider);
        await db.repositoryBookmarksDao.remove(id);
        return null;
      });
}
