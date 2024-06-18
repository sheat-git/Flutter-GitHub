import 'package:github/services/github/github.dart';
import 'package:github/services/github/responses/search/items/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_users.g.dart';

@riverpod
class SearchUsers extends _$SearchUsers {
  @override
  Future<List<UserItem>> build({
    required String query,
    SearchUsersSort sort = SearchUsersSort.bestMatch,
    SearchOrder order = SearchOrder.desc,
    int perPage = 30,
    int page = 1,
  }) async {
    final github = ref.read(githubProvider);
    final response = await github.searchUsers(
      query: query,
      sort: sort,
      order: order,
      perPage: perPage,
      page: page,
    );
    return response.items;
  }

  void reload() {
    state = const AsyncLoading<List<UserItem>>().copyWithPrevious(
      state,
      isRefresh: false,
    );
    ref.invalidateSelf();
  }
}
