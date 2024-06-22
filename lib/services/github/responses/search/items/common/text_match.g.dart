// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextMatchImpl _$$TextMatchImplFromJson(Map<String, dynamic> json) =>
    _$TextMatchImpl(
      objectUrl: json['object_url'] as String?,
      objectType: json['object_type'] as String?,
      property: json['property'] as String?,
      fragment: json['fragment'] as String?,
      matches: (json['matches'] as List<dynamic>?)
          ?.map((e) => Match.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TextMatchImplToJson(_$TextMatchImpl instance) =>
    <String, dynamic>{
      'object_url': instance.objectUrl,
      'object_type': instance.objectType,
      'property': instance.property,
      'fragment': instance.fragment,
      'matches': instance.matches,
    };

_$MatchImpl _$$MatchImplFromJson(Map<String, dynamic> json) => _$MatchImpl(
      text: json['text'] as String?,
      indices: (json['indices'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MatchImplToJson(_$MatchImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'indices': instance.indices,
    };
