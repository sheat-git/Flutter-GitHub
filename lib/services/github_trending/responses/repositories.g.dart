// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryImpl _$$RepositoryImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryImpl(
      author: json['author'] as String,
      name: json['name'] as String,
      avatar: Uri.parse(json['avatar'] as String),
      url: Uri.parse(json['url'] as String),
      description: json['description'] as String,
      language: json['language'] as String?,
      languageColor: json['languageColor'] as String?,
      stars: (json['stars'] as num).toInt(),
      forks: (json['forks'] as num).toInt(),
      currentPeriodStars: (json['currentPeriodStars'] as num).toInt(),
      builtBy: (json['builtBy'] as List<dynamic>)
          .map((e) => BuildBy.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RepositoryImplToJson(_$RepositoryImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'name': instance.name,
      'avatar': instance.avatar.toString(),
      'url': instance.url.toString(),
      'description': instance.description,
      'language': instance.language,
      'languageColor': instance.languageColor,
      'stars': instance.stars,
      'forks': instance.forks,
      'currentPeriodStars': instance.currentPeriodStars,
      'builtBy': instance.builtBy,
    };

_$BuildByImpl _$$BuildByImplFromJson(Map<String, dynamic> json) =>
    _$BuildByImpl(
      username: json['username'] as String?,
      href: Uri.parse(json['href'] as String),
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$BuildByImplToJson(_$BuildByImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'href': instance.href.toString(),
      'avatar': instance.avatar,
    };
