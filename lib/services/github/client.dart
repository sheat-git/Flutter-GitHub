import 'package:dio/dio.dart' hide Headers;
import 'package:github/services/github/responses/repository.dart';
import 'package:github/services/github/responses/search/items/repository.dart';
import 'package:github/services/github/responses/search/items/user.dart';
import 'package:github/services/github/responses/search/search.dart';
import 'package:retrofit/retrofit.dart';

part 'client.g.dart';

@RestApi(baseUrl: 'https://api.github.com')
abstract class GithubClient {
  factory GithubClient(
    Dio dio, {
    String? baseUrl,
  }) {
    dio.options.headers.addAll({
      'Accept': 'application/vnd.github+json',
      'X-GitHub-Api-Version': '2022-11-28'
    });
    return _GithubClient(dio, baseUrl: baseUrl);
  }

  /// リポジトリを取得
  @GET('/repos/{owner}/{repo}')
  Future<RepositoryResponse> getRepository(
    @Path() String owner,
    @Path() String repo,
  );

  /// リポジトリを取得
  @GET('/repositories/{id}')
  Future<RepositoryResponse> getRepositoryById(
    @Path() int id,
  );

  /// リポジトリを検索
  ///
  /// - `sort`: `null`のときbest match。もしくは`stars`, `forks`, `help-wanted-issues`, `updated`のいずれかを指定。
  /// - `order`: `asc`または`desc`。デフォルトは`desc`。
  /// - `perPage`: 最大`100`。デフォルトは`30`。
  /// - `page`: デフォルトは`1`。
  @GET('/search/repositories')
  Future<SearchResponse<RepositoryItem>> searchRepositories({
    @Query('q') required String query,
    @Query('sort') String? sort,
    @Query('order') String? order,
    @Query('per_page') int? perPage,
    @Query('page') int? page,
  });

  /// ユーザーを検索
  ///
  /// - `sort`: `null`のときbest match。もしくは`followers`, `repositories`, `joined`のいずれかを指定。
  /// - `order`: `asc`または`desc`。デフォルトは`desc`。
  /// - `perPage`: 最大`100`。デフォルトは`30`。
  /// - `page`: デフォルトは`1`。
  @GET('/search/users')
  Future<SearchResponse<UserItem>> searchUsers({
    @Query('q') required String query,
    @Query('sort') String? sort,
    @Query('order') String? order,
    @Query('per_page') int? perPage,
    @Query('page') int? page,
  });
}
