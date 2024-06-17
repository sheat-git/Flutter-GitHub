import 'package:freezed_annotation/freezed_annotation.dart';

part 'spoken_languages.freezed.dart';
part 'spoken_languages.g.dart';

typedef SpokenLanguagesResponse = List<SpokenLanguage>;

@freezed
class SpokenLanguage with _$SpokenLanguage {
  const factory SpokenLanguage({
    required String name,
    required String title,
  }) = _SpokenLanguage;

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageFromJson(json);
}
