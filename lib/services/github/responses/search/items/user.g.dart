// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserItemImpl _$$UserItemImplFromJson(Map<String, dynamic> json) =>
    _$UserItemImpl(
      login: json['login'] as String,
      id: (json['id'] as num).toInt(),
      nodeId: json['node_id'] as String,
      avatarUrl: Uri.parse(json['avatar_url'] as String),
      gravatarId: json['gravatar_id'] as String?,
      url: Uri.parse(json['url'] as String),
      htmlUrl: Uri.parse(json['html_url'] as String),
      followersUrl: Uri.parse(json['followers_url'] as String),
      subscriptionsUrl: Uri.parse(json['subscriptions_url'] as String),
      organizationsUrl: Uri.parse(json['organizations_url'] as String),
      reposUrl: Uri.parse(json['repos_url'] as String),
      receivedEventsUrl: Uri.parse(json['received_events_url'] as String),
      type: json['type'] as String,
      score: (json['score'] as num).toInt(),
      followingUrl: json['following_url'] as String,
      gistsUrl: json['gists_url'] as String,
      starredUrl: json['starred_url'] as String,
      eventsUrl: json['events_url'] as String,
      publicRepos: (json['public_repos'] as num?)?.toInt(),
      publicGists: (json['public_gists'] as num?)?.toInt(),
      followers: (json['followers'] as num?)?.toInt(),
      following: (json['following'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      name: json['name'] as String?,
      bio: json['bio'] as String?,
      email: json['email'] as String?,
      location: json['location'] as String?,
      siteAdmin: json['site_admin'] as bool,
      hireable: json['hireable'] as bool?,
      textMatches: (json['text_matches'] as List<dynamic>?)
          ?.map((e) => TextMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
      blog: json['blog'] as String?,
      company: json['company'] as String?,
      suspendedAt: json['suspended_at'] == null
          ? null
          : DateTime.parse(json['suspended_at'] as String),
    );

Map<String, dynamic> _$$UserItemImplToJson(_$UserItemImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.nodeId,
      'avatar_url': instance.avatarUrl.toString(),
      'gravatar_id': instance.gravatarId,
      'url': instance.url.toString(),
      'html_url': instance.htmlUrl.toString(),
      'followers_url': instance.followersUrl.toString(),
      'subscriptions_url': instance.subscriptionsUrl.toString(),
      'organizations_url': instance.organizationsUrl.toString(),
      'repos_url': instance.reposUrl.toString(),
      'received_events_url': instance.receivedEventsUrl.toString(),
      'type': instance.type,
      'score': instance.score,
      'following_url': instance.followingUrl,
      'gists_url': instance.gistsUrl,
      'starred_url': instance.starredUrl,
      'events_url': instance.eventsUrl,
      'public_repos': instance.publicRepos,
      'public_gists': instance.publicGists,
      'followers': instance.followers,
      'following': instance.following,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'name': instance.name,
      'bio': instance.bio,
      'email': instance.email,
      'location': instance.location,
      'site_admin': instance.siteAdmin,
      'hireable': instance.hireable,
      'text_matches': instance.textMatches,
      'blog': instance.blog,
      'company': instance.company,
      'suspended_at': instance.suspendedAt?.toIso8601String(),
    };
