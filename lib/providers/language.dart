import 'package:github/providers/languages.dart';
import 'package:github/services/github_trending/responses/languages.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'language.g.dart';

// 一度Mapに変換することで、アクセスを高速化する
@riverpod
Future<Map<String, Language>> _languages(_LanguagesRef ref) async {
  final languages = await ref.watch(languagesProvider.future);
  return Map.fromEntries(languages.map((l) => MapEntry(l.title, l)));
}

// uiで言語の色を表示する際に使用するだけなため、FutureProviderでなくて良い
@riverpod
Language? language(LanguageRef ref, String title) {
  final languages = ref.watch(_languagesProvider.select((v) => v.valueOrNull));
  return languages?[title];
}
