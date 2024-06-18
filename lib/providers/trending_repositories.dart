import 'package:github/services/github_trending/github_trending.dart';
import 'package:github/services/github_trending/responses/languages.dart';
import 'package:github/services/github_trending/responses/repositories.dart';
import 'package:github/services/github_trending/responses/spoken_languages.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'trending_repositories.g.dart';

@riverpod
class TrendingRepositories extends _$TrendingRepositories {
  @override
  Future<List<Repository>> build({
    TrendingSince since = TrendingSince.daily,
    Language? language,
    SpokenLanguage? spokenLanguage,
  }) async {
    final githubTrending = ref.read(githubTrendingProvider);
    return await githubTrending.getRepositories(
      since: since,
      language: language?.name,
      spokenLanguage: spokenLanguage?.name,
    );
  }

  void reload() {
    state = const AsyncLoading<List<Repository>>().copyWithPrevious(
      state,
      isRefresh: false,
    );
    ref.invalidateSelf();
  }
}
