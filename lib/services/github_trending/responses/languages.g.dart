// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'languages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LanguageImpl _$$LanguageImplFromJson(Map<String, dynamic> json) =>
    _$LanguageImpl(
      color: json['color'] as String,
      url: Uri.parse(json['url'] as String),
      name: json['name'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$LanguageImplToJson(_$LanguageImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'url': instance.url.toString(),
      'name': instance.name,
      'title': instance.title,
    };
