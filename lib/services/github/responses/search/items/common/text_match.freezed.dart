// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextMatch _$TextMatchFromJson(Map<String, dynamic> json) {
  return _TextMatch.fromJson(json);
}

/// @nodoc
mixin _$TextMatch {
  String? get objectUrl => throw _privateConstructorUsedError;
  String? get objectType => throw _privateConstructorUsedError;
  String? get property => throw _privateConstructorUsedError;
  String? get fragment => throw _privateConstructorUsedError;
  List<Match>? get matches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextMatchCopyWith<TextMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextMatchCopyWith<$Res> {
  factory $TextMatchCopyWith(TextMatch value, $Res Function(TextMatch) then) =
      _$TextMatchCopyWithImpl<$Res, TextMatch>;
  @useResult
  $Res call(
      {String? objectUrl,
      String? objectType,
      String? property,
      String? fragment,
      List<Match>? matches});
}

/// @nodoc
class _$TextMatchCopyWithImpl<$Res, $Val extends TextMatch>
    implements $TextMatchCopyWith<$Res> {
  _$TextMatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectUrl = freezed,
    Object? objectType = freezed,
    Object? property = freezed,
    Object? fragment = freezed,
    Object? matches = freezed,
  }) {
    return _then(_value.copyWith(
      objectUrl: freezed == objectUrl
          ? _value.objectUrl
          : objectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      objectType: freezed == objectType
          ? _value.objectType
          : objectType // ignore: cast_nullable_to_non_nullable
              as String?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String?,
      fragment: freezed == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as String?,
      matches: freezed == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Match>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextMatchImplCopyWith<$Res>
    implements $TextMatchCopyWith<$Res> {
  factory _$$TextMatchImplCopyWith(
          _$TextMatchImpl value, $Res Function(_$TextMatchImpl) then) =
      __$$TextMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? objectUrl,
      String? objectType,
      String? property,
      String? fragment,
      List<Match>? matches});
}

/// @nodoc
class __$$TextMatchImplCopyWithImpl<$Res>
    extends _$TextMatchCopyWithImpl<$Res, _$TextMatchImpl>
    implements _$$TextMatchImplCopyWith<$Res> {
  __$$TextMatchImplCopyWithImpl(
      _$TextMatchImpl _value, $Res Function(_$TextMatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectUrl = freezed,
    Object? objectType = freezed,
    Object? property = freezed,
    Object? fragment = freezed,
    Object? matches = freezed,
  }) {
    return _then(_$TextMatchImpl(
      objectUrl: freezed == objectUrl
          ? _value.objectUrl
          : objectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      objectType: freezed == objectType
          ? _value.objectType
          : objectType // ignore: cast_nullable_to_non_nullable
              as String?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String?,
      fragment: freezed == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as String?,
      matches: freezed == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Match>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TextMatchImpl implements _TextMatch {
  const _$TextMatchImpl(
      {this.objectUrl,
      this.objectType,
      this.property,
      this.fragment,
      final List<Match>? matches})
      : _matches = matches;

  factory _$TextMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextMatchImplFromJson(json);

  @override
  final String? objectUrl;
  @override
  final String? objectType;
  @override
  final String? property;
  @override
  final String? fragment;
  final List<Match>? _matches;
  @override
  List<Match>? get matches {
    final value = _matches;
    if (value == null) return null;
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TextMatch(objectUrl: $objectUrl, objectType: $objectType, property: $property, fragment: $fragment, matches: $matches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextMatchImpl &&
            (identical(other.objectUrl, objectUrl) ||
                other.objectUrl == objectUrl) &&
            (identical(other.objectType, objectType) ||
                other.objectType == objectType) &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment) &&
            const DeepCollectionEquality().equals(other._matches, _matches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, objectUrl, objectType, property,
      fragment, const DeepCollectionEquality().hash(_matches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextMatchImplCopyWith<_$TextMatchImpl> get copyWith =>
      __$$TextMatchImplCopyWithImpl<_$TextMatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextMatchImplToJson(
      this,
    );
  }
}

abstract class _TextMatch implements TextMatch {
  const factory _TextMatch(
      {final String? objectUrl,
      final String? objectType,
      final String? property,
      final String? fragment,
      final List<Match>? matches}) = _$TextMatchImpl;

  factory _TextMatch.fromJson(Map<String, dynamic> json) =
      _$TextMatchImpl.fromJson;

  @override
  String? get objectUrl;
  @override
  String? get objectType;
  @override
  String? get property;
  @override
  String? get fragment;
  @override
  List<Match>? get matches;
  @override
  @JsonKey(ignore: true)
  _$$TextMatchImplCopyWith<_$TextMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Match _$MatchFromJson(Map<String, dynamic> json) {
  return _Match.fromJson(json);
}

/// @nodoc
mixin _$Match {
  String? get text => throw _privateConstructorUsedError;
  int? get indices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchCopyWith<Match> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchCopyWith<$Res> {
  factory $MatchCopyWith(Match value, $Res Function(Match) then) =
      _$MatchCopyWithImpl<$Res, Match>;
  @useResult
  $Res call({String? text, int? indices});
}

/// @nodoc
class _$MatchCopyWithImpl<$Res, $Val extends Match>
    implements $MatchCopyWith<$Res> {
  _$MatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? indices = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      indices: freezed == indices
          ? _value.indices
          : indices // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MatchImplCopyWith<$Res> implements $MatchCopyWith<$Res> {
  factory _$$MatchImplCopyWith(
          _$MatchImpl value, $Res Function(_$MatchImpl) then) =
      __$$MatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, int? indices});
}

/// @nodoc
class __$$MatchImplCopyWithImpl<$Res>
    extends _$MatchCopyWithImpl<$Res, _$MatchImpl>
    implements _$$MatchImplCopyWith<$Res> {
  __$$MatchImplCopyWithImpl(
      _$MatchImpl _value, $Res Function(_$MatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? indices = freezed,
  }) {
    return _then(_$MatchImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      indices: freezed == indices
          ? _value.indices
          : indices // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchImpl implements _Match {
  const _$MatchImpl({this.text, this.indices});

  factory _$MatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchImplFromJson(json);

  @override
  final String? text;
  @override
  final int? indices;

  @override
  String toString() {
    return 'Match(text: $text, indices: $indices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.indices, indices) || other.indices == indices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, indices);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      __$$MatchImplCopyWithImpl<_$MatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchImplToJson(
      this,
    );
  }
}

abstract class _Match implements Match {
  const factory _Match({final String? text, final int? indices}) = _$MatchImpl;

  factory _Match.fromJson(Map<String, dynamic> json) = _$MatchImpl.fromJson;

  @override
  String? get text;
  @override
  int? get indices;
  @override
  @JsonKey(ignore: true)
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
