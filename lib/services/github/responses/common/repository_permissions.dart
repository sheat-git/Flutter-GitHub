import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_permissions.freezed.dart';
part 'repository_permissions.g.dart';

@freezed
class RepositoryPermissions with _$RepositoryPermissions {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RepositoryPermissions({
    required bool admin,
    bool? maintain,
    required bool push,
    bool? triage,
    required bool pull,
  }) = _RepositoryPermissions;

  factory RepositoryPermissions.fromJson(Map<String, dynamic> json) =>
      _$RepositoryPermissionsFromJson(json);
}
