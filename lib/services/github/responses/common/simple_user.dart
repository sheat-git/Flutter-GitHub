import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_user.freezed.dart';
part 'simple_user.g.dart';

@freezed
class SimpleUser with _$SimpleUser {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SimpleUser({
    String? name,
    String? email,
    required String login,
    required int id,
    required String nodeId,
    required Uri avatarUrl,
    required String? gravatarId,
    required Uri url,
    required Uri htmlUrl,
    required Uri followersUrl,
    required String followingUrl,
    required String gistsUrl,
    required String starredUrl,
    required Uri subscriptionsUrl,
    required Uri organizationsUrl,
    required Uri reposUrl,
    required String eventsUrl,
    required Uri receivedEventsUrl,
    required String type,
    required bool siteAdmin,
    String? starredAt,
  }) = _SimpleUser;

  factory SimpleUser.fromJson(Map<String, dynamic> json) =>
      _$SimpleUserFromJson(json);
}
