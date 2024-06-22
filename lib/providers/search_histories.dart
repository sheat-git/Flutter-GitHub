import 'dart:collection';

import 'package:github/services/database/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_histories.g.dart';

@riverpod
class SearchHistories extends _$SearchHistories {
  @override
  Future<SplayTreeMap<int, SearchHistory>> build() async {
    final db = ref.read(dbProvider);
    final histories = await db.searchHistoriesDao.getAll();
    return SplayTreeMap.fromIterable(
      histories,
      key: (history) => history.id,
      value: (history) => history,
      compare: (key1, key2) => key2.compareTo(key1),
    );
  }

  Future<void> add(String query) => update((map) async {
        final firstKey = map.firstKey();
        if (firstKey != null && map[firstKey]?.query == query) {
          return map;
        }
        final db = ref.read(dbProvider);
        final history = await db.searchHistoriesDao.add(query);
        map[history.id] = history;
        return map;
      });

  Future<void> remove(int id) => update((map) async {
        final db = ref.read(dbProvider);
        await db.searchHistoriesDao.remove(id);
        map.remove(id);
        return map;
      });

  Future<void> removeAll() => update((map) async {
        final db = ref.read(dbProvider);
        await db.searchHistoriesDao.removeAll();
        map.clear();
        return map;
      });
}
