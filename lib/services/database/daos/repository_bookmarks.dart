import 'package:drift/drift.dart';
import 'package:github/services/database/database.dart';
import 'package:github/services/database/tables/repository_bookmarks.dart';

part 'repository_bookmarks.g.dart';

@DriftAccessor(tables: [RepositoryBookmarks])
class RepositoryBookmarksDao extends DatabaseAccessor<Database>
    with _$RepositoryBookmarksDaoMixin {
  RepositoryBookmarksDao(super.db);

  Future<List<RepositoryBookmark>> getAll() => (select(repositoryBookmarks)
        ..orderBy([(t) => OrderingTerm.desc(t.addedAt)]))
      .get();

  Future<RepositoryBookmark?> get(int id) =>
      (select(repositoryBookmarks)..where((t) => t.id.equals(id)))
          .getSingleOrNull();

  Future<RepositoryBookmark> add(int id) =>
      into(repositoryBookmarks).insertReturning(
        RepositoryBookmark(id: id, addedAt: DateTime.now()),
        mode: InsertMode.insertOrReplace,
      );

  Future<void> remove(int id) =>
      (delete(repositoryBookmarks)..where((t) => t.id.equals(id))).go();
}
