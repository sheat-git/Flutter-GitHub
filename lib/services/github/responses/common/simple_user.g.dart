// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleUserImpl _$$SimpleUserImplFromJson(Map<String, dynamic> json) =>
    _$SimpleUserImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      login: json['login'] as String,
      id: (json['id'] as num).toInt(),
      nodeId: json['node_id'] as String,
      avatarUrl: Uri.parse(json['avatar_url'] as String),
      gravatarId: json['gravatar_id'] as String?,
      url: Uri.parse(json['url'] as String),
      htmlUrl: Uri.parse(json['html_url'] as String),
      followersUrl: Uri.parse(json['followers_url'] as String),
      followingUrl: json['following_url'] as String,
      gistsUrl: json['gists_url'] as String,
      starredUrl: json['starred_url'] as String,
      subscriptionsUrl: Uri.parse(json['subscriptions_url'] as String),
      organizationsUrl: Uri.parse(json['organizations_url'] as String),
      reposUrl: Uri.parse(json['repos_url'] as String),
      eventsUrl: json['events_url'] as String,
      receivedEventsUrl: Uri.parse(json['received_events_url'] as String),
      type: json['type'] as String,
      siteAdmin: json['site_admin'] as bool,
      starredAt: json['starred_at'] as String?,
    );

Map<String, dynamic> _$$SimpleUserImplToJson(_$SimpleUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.nodeId,
      'avatar_url': instance.avatarUrl.toString(),
      'gravatar_id': instance.gravatarId,
      'url': instance.url.toString(),
      'html_url': instance.htmlUrl.toString(),
      'followers_url': instance.followersUrl.toString(),
      'following_url': instance.followingUrl,
      'gists_url': instance.gistsUrl,
      'starred_url': instance.starredUrl,
      'subscriptions_url': instance.subscriptionsUrl.toString(),
      'organizations_url': instance.organizationsUrl.toString(),
      'repos_url': instance.reposUrl.toString(),
      'events_url': instance.eventsUrl,
      'received_events_url': instance.receivedEventsUrl.toString(),
      'type': instance.type,
      'site_admin': instance.siteAdmin,
      'starred_at': instance.starredAt,
    };
