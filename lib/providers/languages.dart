import 'package:github/services/github_trending/github_trending.dart';
import 'package:github/services/github_trending/responses/languages.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'languages.g.dart';

@riverpod
Future<List<Language>> languages(LanguagesRef ref) async {
  final githubTrending = ref.read(githubTrendingProvider);
  return await githubTrending.getLanguages();
}
