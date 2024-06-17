import 'package:drift/drift.dart';

@TableIndex(name: 'repository_bookmark_added_at', columns: {#addedAt})
class RepositoryBookmarks extends Table {
  IntColumn get id => integer()();
  DateTimeColumn get addedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}
