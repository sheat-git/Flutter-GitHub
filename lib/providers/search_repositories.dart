import 'package:github/services/github/github.dart';
import 'package:github/services/github/responses/search/items/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_repositories.g.dart';

@riverpod
class SearchRepositories extends _$SearchRepositories {
  @override
  Future<List<RepositoryItem>> build({
    required String query,
    SearchRepositoriesSort sort = SearchRepositoriesSort.bestMatch,
    SearchOrder order = SearchOrder.desc,
    int perPage = 30,
    int page = 1,
  }) async {
    final github = ref.read(githubProvider);
    final response = await github.searchRepositories(
      query: query,
      sort: sort,
      order: order,
      perPage: perPage,
      page: page,
    );
    return response.items;
  }

  void reload() {
    state = const AsyncLoading<List<RepositoryItem>>().copyWithPrevious(
      state,
      isRefresh: false,
    );
    ref.invalidateSelf();
  }
}
