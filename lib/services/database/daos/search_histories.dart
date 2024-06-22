import 'package:drift/drift.dart';
import 'package:github/services/database/database.dart';
import 'package:github/services/database/tables/search_histories.dart';

part 'search_histories.g.dart';

@DriftAccessor(tables: [SearchHistories])
class SearchHistoriesDao extends DatabaseAccessor<Database>
    with _$SearchHistoriesDaoMixin {
  SearchHistoriesDao(super.db);

  Future<List<SearchHistory>> getAll() =>
      (select(searchHistories)..orderBy([(t) => OrderingTerm.desc(t.id)]))
          .get();

  Future<SearchHistory> add(String query) => into(searchHistories)
      .insertReturning(SearchHistoriesCompanion.insert(query: query));

  Future<void> removeAll() => delete(searchHistories).go();

  Future<void> remove(int id) =>
      (delete(searchHistories)..where((t) => t.id.equals(id))).go();
}
