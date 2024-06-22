import 'package:dio/dio.dart';
import 'package:github/services/github/client.dart';
import 'package:github/services/github/responses/repository.dart';
import 'package:github/services/github/responses/search/items/repository.dart';
import 'package:github/services/github/responses/search/items/user.dart';
import 'package:github/services/github/responses/search/search.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github.g.dart';

@riverpod
GithubService github(GithubRef _) => GithubService(GithubClient(Dio()));

class GithubService {
  final GithubClient _client;

  GithubService(GithubClient client) : _client = client;

  Future<RepositoryResponse> getRepository({
    required String owner,
    required String name,
  }) =>
      _client.getRepository(owner, name);

  Future<RepositoryResponse> getRepositoryById(int id) =>
      _client.getRepositoryById(id);

  Future<SearchResponse<RepositoryItem>> searchRepositories({
    required String query,
    SearchRepositoriesSort sort = SearchRepositoriesSort.bestMatch,
    SearchOrder order = SearchOrder.desc,
    int perPage = 30,
    int page = 1,
  }) async {
    assert(perPage <= 100);
    return await _client.searchRepositories(
      query: query,
      sort: sort.toParameter(),
      order: order.toParameter(),
      perPage: perPage,
      page: page,
    );
  }

  Future<SearchResponse<UserItem>> searchUsers({
    required String query,
    SearchUsersSort sort = SearchUsersSort.bestMatch,
    SearchOrder order = SearchOrder.desc,
    int perPage = 30,
    int page = 1,
  }) async {
    assert(perPage <= 100);
    return await _client.searchUsers(
      query: query,
      sort: sort.toParameter(),
      order: order.toParameter(),
      perPage: perPage,
      page: page,
    );
  }
}

enum SearchOrder {
  asc,
  desc;

  String toParameter() => name;
}

enum SearchRepositoriesSort {
  bestMatch,
  stars,
  forks,
  helpWantedIssues,
  updated;

  String? toParameter() => switch (this) {
        SearchRepositoriesSort.bestMatch => null,
        SearchRepositoriesSort.helpWantedIssues => 'help-wanted-issues',
        _ => name,
      };
}

enum SearchUsersSort {
  bestMatch,
  followers,
  repositories,
  joined;

  String? toParameter() => switch (this) {
        SearchUsersSort.bestMatch => null,
        _ => name,
      };
}
