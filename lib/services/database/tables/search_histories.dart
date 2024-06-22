import 'package:drift/drift.dart';

@DataClassName('SearchHistory')
class SearchHistories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get query => text()();
}
