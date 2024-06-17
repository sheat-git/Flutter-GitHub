// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_license.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleLicenseImpl _$$SimpleLicenseImplFromJson(Map<String, dynamic> json) =>
    _$SimpleLicenseImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      spdxId: json['spdx_id'] as String?,
      nodeId: json['node_id'] as String,
      htmlUrl: json['html_url'] == null
          ? null
          : Uri.parse(json['html_url'] as String),
    );

Map<String, dynamic> _$$SimpleLicenseImplToJson(_$SimpleLicenseImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'url': instance.url?.toString(),
      'spdx_id': instance.spdxId,
      'node_id': instance.nodeId,
      'html_url': instance.htmlUrl?.toString(),
    };
