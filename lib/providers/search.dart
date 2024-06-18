import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github/services/github/github.dart';
import 'package:github/services/github/responses/search/items/repository.dart';
import 'package:github/services/github/responses/search/items/user.dart';
import 'package:github/services/github/responses/search/search.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class SearchResponses with _$SearchResponses {
  const factory SearchResponses({
    required SearchResponse<RepositoryItem> repositories,
    required SearchResponse<UserItem> users,
  }) = _SearchResponses;
}

@riverpod
class Search extends _$Search {
  @override
  Future<SearchResponses> build(String query) async {
    final github = ref.read(githubProvider);
    final (repositories, users) = await (
      github.searchRepositories(query: query, perPage: 3),
      github.searchUsers(query: query, perPage: 3),
    ).wait;
    return SearchResponses(
      repositories: repositories,
      users: users,
    );
  }

  void reload() {
    state = const AsyncLoading<SearchResponses>().copyWithPrevious(
      state,
      isRefresh: false,
    );
    ref.invalidateSelf();
  }
}
