import 'dart:developer';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:github/services/database/daos/repository_bookmarks.dart';
import 'package:github/services/database/daos/search_histories.dart';
import 'package:github/services/database/daos/settings.dart';
import 'package:github/services/database/tables/repository_bookmarks.dart';
import 'package:github/services/database/tables/search_histories.dart';
import 'package:github/services/database/tables/settings.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'database.g.dart';

// 永続化していないと、Databaseが何度も初期化され、エラーが起きることがある
@Riverpod(keepAlive: true)
Database db(DbRef _) => Database();

@DriftDatabase(
  tables: [
    RepositoryBookmarks,
    SearchHistories,
    Settings,
  ],
  daos: [
    RepositoryBookmarksDao,
    SearchHistoriesDao,
    SettingsDao,
  ],
)
class Database extends _$Database {
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
          await into(settings).insert(Settings.initialRecord);
        },
      );
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final docsDirectory = await getApplicationDocumentsDirectory();
      final file = File(p.join(docsDirectory.path, 'db.sqlite'));

      log('Database file: ${file.path}');

      if (Platform.isAndroid) {
        await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
      }

      final tempDirectory = (await getTemporaryDirectory()).path;
      sqlite3.tempDirectory = tempDirectory;

      return NativeDatabase.createInBackground(file);
    });
