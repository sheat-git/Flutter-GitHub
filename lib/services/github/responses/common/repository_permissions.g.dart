// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_permissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryPermissionsImpl _$$RepositoryPermissionsImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryPermissionsImpl(
      admin: json['admin'] as bool,
      maintain: json['maintain'] as bool?,
      push: json['push'] as bool,
      triage: json['triage'] as bool?,
      pull: json['pull'] as bool,
    );

Map<String, dynamic> _$$RepositoryPermissionsImplToJson(
        _$RepositoryPermissionsImpl instance) =>
    <String, dynamic>{
      'admin': instance.admin,
      'maintain': instance.maintain,
      'push': instance.push,
      'triage': instance.triage,
      'pull': instance.pull,
    };
