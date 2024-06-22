import 'package:dio/dio.dart';
import 'package:github/services/github_trending/client.dart';
import 'package:github/services/github_trending/responses/languages.dart';
import 'package:github/services/github_trending/responses/repositories.dart';
import 'package:github/services/github_trending/responses/spoken_languages.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github_trending.g.dart';

@riverpod
GithubTrendingService githubTrending(GithubTrendingRef _) =>
    GithubTrendingService();

class GithubTrendingService {
  final GithubTrendingClient _client;

  GithubTrendingService._(Dio dio) : _client = GithubTrendingClient(dio);

  factory GithubTrendingService() => GithubTrendingService._(Dio());

  Future<RepositoriesResponse> getRepositories({
    String? language,
    TrendingSince? since,
    String? spokenLanguage,
  }) =>
      _client.getRepositories(
        language: language,
        since: since?.toParameter(),
        spokenLanguage: spokenLanguage,
      );

  Future<LanguagesResponse> getLanguages() => _client.getLanguages();

  Future<SpokenLanguagesResponse> getSpokenLanguages() =>
      _client.getSpokenLanguages();
}

enum TrendingSince {
  daily,
  weekly,
  monthly;

  String toParameter() => name;
}
