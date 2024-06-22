// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_license.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimpleLicense _$SimpleLicenseFromJson(Map<String, dynamic> json) {
  return _SimpleLicense.fromJson(json);
}

/// @nodoc
mixin _$SimpleLicense {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Uri? get url => throw _privateConstructorUsedError;
  String? get spdxId => throw _privateConstructorUsedError;
  String get nodeId => throw _privateConstructorUsedError;
  Uri? get htmlUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimpleLicenseCopyWith<SimpleLicense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleLicenseCopyWith<$Res> {
  factory $SimpleLicenseCopyWith(
          SimpleLicense value, $Res Function(SimpleLicense) then) =
      _$SimpleLicenseCopyWithImpl<$Res, SimpleLicense>;
  @useResult
  $Res call(
      {String key,
      String name,
      Uri? url,
      String? spdxId,
      String nodeId,
      Uri? htmlUrl});
}

/// @nodoc
class _$SimpleLicenseCopyWithImpl<$Res, $Val extends SimpleLicense>
    implements $SimpleLicenseCopyWith<$Res> {
  _$SimpleLicenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? url = freezed,
    Object? spdxId = freezed,
    Object? nodeId = null,
    Object? htmlUrl = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
      spdxId: freezed == spdxId
          ? _value.spdxId
          : spdxId // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeId: null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleLicenseImplCopyWith<$Res>
    implements $SimpleLicenseCopyWith<$Res> {
  factory _$$SimpleLicenseImplCopyWith(
          _$SimpleLicenseImpl value, $Res Function(_$SimpleLicenseImpl) then) =
      __$$SimpleLicenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String name,
      Uri? url,
      String? spdxId,
      String nodeId,
      Uri? htmlUrl});
}

/// @nodoc
class __$$SimpleLicenseImplCopyWithImpl<$Res>
    extends _$SimpleLicenseCopyWithImpl<$Res, _$SimpleLicenseImpl>
    implements _$$SimpleLicenseImplCopyWith<$Res> {
  __$$SimpleLicenseImplCopyWithImpl(
      _$SimpleLicenseImpl _value, $Res Function(_$SimpleLicenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? url = freezed,
    Object? spdxId = freezed,
    Object? nodeId = null,
    Object? htmlUrl = freezed,
  }) {
    return _then(_$SimpleLicenseImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
      spdxId: freezed == spdxId
          ? _value.spdxId
          : spdxId // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeId: null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SimpleLicenseImpl implements _SimpleLicense {
  const _$SimpleLicenseImpl(
      {required this.key,
      required this.name,
      required this.url,
      required this.spdxId,
      required this.nodeId,
      this.htmlUrl});

  factory _$SimpleLicenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleLicenseImplFromJson(json);

  @override
  final String key;
  @override
  final String name;
  @override
  final Uri? url;
  @override
  final String? spdxId;
  @override
  final String nodeId;
  @override
  final Uri? htmlUrl;

  @override
  String toString() {
    return 'SimpleLicense(key: $key, name: $name, url: $url, spdxId: $spdxId, nodeId: $nodeId, htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleLicenseImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.spdxId, spdxId) || other.spdxId == spdxId) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, name, url, spdxId, nodeId, htmlUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleLicenseImplCopyWith<_$SimpleLicenseImpl> get copyWith =>
      __$$SimpleLicenseImplCopyWithImpl<_$SimpleLicenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleLicenseImplToJson(
      this,
    );
  }
}

abstract class _SimpleLicense implements SimpleLicense {
  const factory _SimpleLicense(
      {required final String key,
      required final String name,
      required final Uri? url,
      required final String? spdxId,
      required final String nodeId,
      final Uri? htmlUrl}) = _$SimpleLicenseImpl;

  factory _SimpleLicense.fromJson(Map<String, dynamic> json) =
      _$SimpleLicenseImpl.fromJson;

  @override
  String get key;
  @override
  String get name;
  @override
  Uri? get url;
  @override
  String? get spdxId;
  @override
  String get nodeId;
  @override
  Uri? get htmlUrl;
  @override
  @JsonKey(ignore: true)
  _$$SimpleLicenseImplCopyWith<_$SimpleLicenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
