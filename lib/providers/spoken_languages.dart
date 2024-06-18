import 'package:github/services/github_trending/github_trending.dart';
import 'package:github/services/github_trending/responses/spoken_languages.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spoken_languages.g.dart';

@riverpod
Future<List<SpokenLanguage>> spokenLanguages(SpokenLanguagesRef ref) async {
  final githubTrending = ref.read(githubTrendingProvider);
  return await githubTrending.getSpokenLanguages();
}
