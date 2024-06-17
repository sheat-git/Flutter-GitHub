import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_match.freezed.dart';
part 'text_match.g.dart';

// 参照: https://docs.github.com/ja/rest/search/search?apiVersion=2022-11-28#text-match-metadata
// 応答スキーマにrequiredがないため、すべてnullableにしているが、undefinedなことがあるか不明

@freezed
class TextMatch with _$TextMatch {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TextMatch({
    String? objectUrl,
    String? objectType,
    String? property,
    String? fragment,
    List<Match>? matches,
  }) = _TextMatch;

  factory TextMatch.fromJson(Map<String, dynamic> json) =>
      _$TextMatchFromJson(json);
}

@freezed
class Match with _$Match {
  const factory Match({
    String? text,
    int? indices,
  }) = _Match;

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);
}
