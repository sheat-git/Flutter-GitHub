// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_permissions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepositoryPermissions _$RepositoryPermissionsFromJson(
    Map<String, dynamic> json) {
  return _RepositoryPermissions.fromJson(json);
}

/// @nodoc
mixin _$RepositoryPermissions {
  bool get admin => throw _privateConstructorUsedError;
  bool? get maintain => throw _privateConstructorUsedError;
  bool get push => throw _privateConstructorUsedError;
  bool? get triage => throw _privateConstructorUsedError;
  bool get pull => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryPermissionsCopyWith<RepositoryPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryPermissionsCopyWith<$Res> {
  factory $RepositoryPermissionsCopyWith(RepositoryPermissions value,
          $Res Function(RepositoryPermissions) then) =
      _$RepositoryPermissionsCopyWithImpl<$Res, RepositoryPermissions>;
  @useResult
  $Res call({bool admin, bool? maintain, bool push, bool? triage, bool pull});
}

/// @nodoc
class _$RepositoryPermissionsCopyWithImpl<$Res,
        $Val extends RepositoryPermissions>
    implements $RepositoryPermissionsCopyWith<$Res> {
  _$RepositoryPermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
    Object? maintain = freezed,
    Object? push = null,
    Object? triage = freezed,
    Object? pull = null,
  }) {
    return _then(_value.copyWith(
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
      maintain: freezed == maintain
          ? _value.maintain
          : maintain // ignore: cast_nullable_to_non_nullable
              as bool?,
      push: null == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as bool,
      triage: freezed == triage
          ? _value.triage
          : triage // ignore: cast_nullable_to_non_nullable
              as bool?,
      pull: null == pull
          ? _value.pull
          : pull // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryPermissionsImplCopyWith<$Res>
    implements $RepositoryPermissionsCopyWith<$Res> {
  factory _$$RepositoryPermissionsImplCopyWith(
          _$RepositoryPermissionsImpl value,
          $Res Function(_$RepositoryPermissionsImpl) then) =
      __$$RepositoryPermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool admin, bool? maintain, bool push, bool? triage, bool pull});
}

/// @nodoc
class __$$RepositoryPermissionsImplCopyWithImpl<$Res>
    extends _$RepositoryPermissionsCopyWithImpl<$Res,
        _$RepositoryPermissionsImpl>
    implements _$$RepositoryPermissionsImplCopyWith<$Res> {
  __$$RepositoryPermissionsImplCopyWithImpl(_$RepositoryPermissionsImpl _value,
      $Res Function(_$RepositoryPermissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
    Object? maintain = freezed,
    Object? push = null,
    Object? triage = freezed,
    Object? pull = null,
  }) {
    return _then(_$RepositoryPermissionsImpl(
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
      maintain: freezed == maintain
          ? _value.maintain
          : maintain // ignore: cast_nullable_to_non_nullable
              as bool?,
      push: null == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as bool,
      triage: freezed == triage
          ? _value.triage
          : triage // ignore: cast_nullable_to_non_nullable
              as bool?,
      pull: null == pull
          ? _value.pull
          : pull // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RepositoryPermissionsImpl implements _RepositoryPermissions {
  const _$RepositoryPermissionsImpl(
      {required this.admin,
      this.maintain,
      required this.push,
      this.triage,
      required this.pull});

  factory _$RepositoryPermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryPermissionsImplFromJson(json);

  @override
  final bool admin;
  @override
  final bool? maintain;
  @override
  final bool push;
  @override
  final bool? triage;
  @override
  final bool pull;

  @override
  String toString() {
    return 'RepositoryPermissions(admin: $admin, maintain: $maintain, push: $push, triage: $triage, pull: $pull)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryPermissionsImpl &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.maintain, maintain) ||
                other.maintain == maintain) &&
            (identical(other.push, push) || other.push == push) &&
            (identical(other.triage, triage) || other.triage == triage) &&
            (identical(other.pull, pull) || other.pull == pull));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, admin, maintain, push, triage, pull);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryPermissionsImplCopyWith<_$RepositoryPermissionsImpl>
      get copyWith => __$$RepositoryPermissionsImplCopyWithImpl<
          _$RepositoryPermissionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryPermissionsImplToJson(
      this,
    );
  }
}

abstract class _RepositoryPermissions implements RepositoryPermissions {
  const factory _RepositoryPermissions(
      {required final bool admin,
      final bool? maintain,
      required final bool push,
      final bool? triage,
      required final bool pull}) = _$RepositoryPermissionsImpl;

  factory _RepositoryPermissions.fromJson(Map<String, dynamic> json) =
      _$RepositoryPermissionsImpl.fromJson;

  @override
  bool get admin;
  @override
  bool? get maintain;
  @override
  bool get push;
  @override
  bool? get triage;
  @override
  bool get pull;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryPermissionsImplCopyWith<_$RepositoryPermissionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
