import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github/services/github/responses/search/items/common/text_match.dart';

part 'user.freezed.dart';
part 'user.g.dart';

// 参照: https://docs.github.com/ja/rest/search/search?apiVersion=2022-11-28#search-users

@freezed
class UserItem with _$UserItem {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserItem({
    required String login,
    required int id,
    required String nodeId,
    required Uri avatarUrl,
    required String? gravatarId,
    required Uri url,
    required Uri htmlUrl,
    required Uri followersUrl,
    required Uri subscriptionsUrl,
    required Uri organizationsUrl,
    required Uri reposUrl,
    required Uri receivedEventsUrl,
    required String type,
    required int score,
    required String followingUrl,
    required String gistsUrl,
    required String starredUrl,
    required String eventsUrl,
    int? publicRepos,
    int? publicGists,
    int? followers,
    int? following,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    String? bio,
    String? email,
    String? location,
    required bool siteAdmin,
    bool? hireable,
    List<TextMatch>? textMatches,
    String? blog,
    String? company,
    DateTime? suspendedAt,
  }) = _UserItem;

  factory UserItem.fromJson(Map<String, dynamic> json) =>
      _$UserItemFromJson(json);
}
