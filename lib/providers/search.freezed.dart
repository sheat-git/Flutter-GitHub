// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchResponses {
  SearchResponse<RepositoryItem> get repositories =>
      throw _privateConstructorUsedError;
  SearchResponse<UserItem> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResponsesCopyWith<SearchResponses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponsesCopyWith<$Res> {
  factory $SearchResponsesCopyWith(
          SearchResponses value, $Res Function(SearchResponses) then) =
      _$SearchResponsesCopyWithImpl<$Res, SearchResponses>;
  @useResult
  $Res call(
      {SearchResponse<RepositoryItem> repositories,
      SearchResponse<UserItem> users});

  $SearchResponseCopyWith<RepositoryItem, $Res> get repositories;
  $SearchResponseCopyWith<UserItem, $Res> get users;
}

/// @nodoc
class _$SearchResponsesCopyWithImpl<$Res, $Val extends SearchResponses>
    implements $SearchResponsesCopyWith<$Res> {
  _$SearchResponsesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositories = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      repositories: null == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as SearchResponse<RepositoryItem>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as SearchResponse<UserItem>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchResponseCopyWith<RepositoryItem, $Res> get repositories {
    return $SearchResponseCopyWith<RepositoryItem, $Res>(_value.repositories,
        (value) {
      return _then(_value.copyWith(repositories: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchResponseCopyWith<UserItem, $Res> get users {
    return $SearchResponseCopyWith<UserItem, $Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchResponsesImplCopyWith<$Res>
    implements $SearchResponsesCopyWith<$Res> {
  factory _$$SearchResponsesImplCopyWith(_$SearchResponsesImpl value,
          $Res Function(_$SearchResponsesImpl) then) =
      __$$SearchResponsesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchResponse<RepositoryItem> repositories,
      SearchResponse<UserItem> users});

  @override
  $SearchResponseCopyWith<RepositoryItem, $Res> get repositories;
  @override
  $SearchResponseCopyWith<UserItem, $Res> get users;
}

/// @nodoc
class __$$SearchResponsesImplCopyWithImpl<$Res>
    extends _$SearchResponsesCopyWithImpl<$Res, _$SearchResponsesImpl>
    implements _$$SearchResponsesImplCopyWith<$Res> {
  __$$SearchResponsesImplCopyWithImpl(
      _$SearchResponsesImpl _value, $Res Function(_$SearchResponsesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositories = null,
    Object? users = null,
  }) {
    return _then(_$SearchResponsesImpl(
      repositories: null == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as SearchResponse<RepositoryItem>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as SearchResponse<UserItem>,
    ));
  }
}

/// @nodoc

class _$SearchResponsesImpl implements _SearchResponses {
  const _$SearchResponsesImpl(
      {required this.repositories, required this.users});

  @override
  final SearchResponse<RepositoryItem> repositories;
  @override
  final SearchResponse<UserItem> users;

  @override
  String toString() {
    return 'SearchResponses(repositories: $repositories, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResponsesImpl &&
            (identical(other.repositories, repositories) ||
                other.repositories == repositories) &&
            (identical(other.users, users) || other.users == users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repositories, users);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResponsesImplCopyWith<_$SearchResponsesImpl> get copyWith =>
      __$$SearchResponsesImplCopyWithImpl<_$SearchResponsesImpl>(
          this, _$identity);
}

abstract class _SearchResponses implements SearchResponses {
  const factory _SearchResponses(
      {required final SearchResponse<RepositoryItem> repositories,
      required final SearchResponse<UserItem> users}) = _$SearchResponsesImpl;

  @override
  SearchResponse<RepositoryItem> get repositories;
  @override
  SearchResponse<UserItem> get users;
  @override
  @JsonKey(ignore: true)
  _$$SearchResponsesImplCopyWith<_$SearchResponsesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
