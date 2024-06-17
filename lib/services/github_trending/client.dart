import 'package:dio/dio.dart';
import 'package:github/services/github_trending/responses/languages.dart';
import 'package:github/services/github_trending/responses/repositories.dart';
import 'package:github/services/github_trending/responses/spoken_languages.dart';
import 'package:retrofit/retrofit.dart';

part 'client.g.dart';

@RestApi(baseUrl: 'https://api.gitterapp.com')
abstract class GithubTrendingClient {
  factory GithubTrendingClient(Dio dio, {String? baseUrl}) =>
      _GithubTrendingClient(dio, baseUrl: baseUrl);

  /// トレンドリポジトリを取得
  ///
  /// - `since`: `daily`, `weekly`, `monthly`のいずれか。デフォルトは`daily`。
  @GET('/repositories')
  Future<RepositoriesResponse> getRepositories({
    @Query('language') String? language,
    @Query('since') String? since,
    @Query('spoken_language') String? spokenLanguage,
  });

  /// 言語一覧を取得
  @GET('/languages')
  Future<LanguagesResponse> getLanguages();

  /// 話し言葉一覧を取得
  @GET('/spoken_languages')
  Future<SpokenLanguagesResponse> getSpokenLanguages();
}
