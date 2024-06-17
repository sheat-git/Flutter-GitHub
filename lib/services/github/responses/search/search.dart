import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

// 参照: https://docs.github.com/ja/rest/search/search?apiVersion=2022-11-28

@Freezed(genericArgumentFactories: true)
class SearchResponse<Item> with _$SearchResponse<Item> {
  @JsonSerializable(
      fieldRename: FieldRename.snake, genericArgumentFactories: true)
  const factory SearchResponse({
    required int totalCount,
    required bool incompleteResults,
    required List<Item> items,
  }) = _SearchRepositoriesResponse;

  factory SearchResponse.fromJson(
          Map<String, dynamic> json, Item Function(Object?) fromJsonItem) =>
      _$SearchResponseFromJson(json, fromJsonItem);
}
