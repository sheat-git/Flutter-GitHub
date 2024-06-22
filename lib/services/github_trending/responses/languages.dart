import 'package:freezed_annotation/freezed_annotation.dart';

part 'languages.freezed.dart';
part 'languages.g.dart';

typedef LanguagesResponse = List<Language>;

@freezed
class Language with _$Language {
  const factory Language({
    required String color,
    required Uri url,
    required String name,
    required String title,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}
