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

SearchResponse<Item> _$SearchResponseFromJson<Item>(
    Map<String, dynamic> json, Item Function(Object?) fromJsonItem) {
  return _SearchRepositoriesResponse<Item>.fromJson(json, fromJsonItem);
}

/// @nodoc
mixin _$SearchResponse<Item> {
  int get totalCount => throw _privateConstructorUsedError;
  bool get incompleteResults => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(Item) toJsonItem) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseCopyWith<Item, SearchResponse<Item>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseCopyWith<Item, $Res> {
  factory $SearchResponseCopyWith(SearchResponse<Item> value,
          $Res Function(SearchResponse<Item>) then) =
      _$SearchResponseCopyWithImpl<Item, $Res, SearchResponse<Item>>;
  @useResult
  $Res call({int totalCount, bool incompleteResults, List<Item> items});
}

/// @nodoc
class _$SearchResponseCopyWithImpl<Item, $Res,
        $Val extends SearchResponse<Item>>
    implements $SearchResponseCopyWith<Item, $Res> {
  _$SearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRepositoriesResponseImplCopyWith<Item, $Res>
    implements $SearchResponseCopyWith<Item, $Res> {
  factory _$$SearchRepositoriesResponseImplCopyWith(
          _$SearchRepositoriesResponseImpl<Item> value,
          $Res Function(_$SearchRepositoriesResponseImpl<Item>) then) =
      __$$SearchRepositoriesResponseImplCopyWithImpl<Item, $Res>;
  @override
  @useResult
  $Res call({int totalCount, bool incompleteResults, List<Item> items});
}

/// @nodoc
class __$$SearchRepositoriesResponseImplCopyWithImpl<Item, $Res>
    extends _$SearchResponseCopyWithImpl<Item, $Res,
        _$SearchRepositoriesResponseImpl<Item>>
    implements _$$SearchRepositoriesResponseImplCopyWith<Item, $Res> {
  __$$SearchRepositoriesResponseImplCopyWithImpl(
      _$SearchRepositoriesResponseImpl<Item> _value,
      $Res Function(_$SearchRepositoriesResponseImpl<Item>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_$SearchRepositoriesResponseImpl<Item>(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, genericArgumentFactories: true)
class _$SearchRepositoriesResponseImpl<Item>
    implements _SearchRepositoriesResponse<Item> {
  const _$SearchRepositoriesResponseImpl(
      {required this.totalCount,
      required this.incompleteResults,
      required final List<Item> items})
      : _items = items;

  factory _$SearchRepositoriesResponseImpl.fromJson(
          Map<String, dynamic> json, Item Function(Object?) fromJsonItem) =>
      _$$SearchRepositoriesResponseImplFromJson(json, fromJsonItem);

  @override
  final int totalCount;
  @override
  final bool incompleteResults;
  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SearchResponse<$Item>(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoriesResponseImpl<Item> &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRepositoriesResponseImplCopyWith<Item,
          _$SearchRepositoriesResponseImpl<Item>>
      get copyWith => __$$SearchRepositoriesResponseImplCopyWithImpl<Item,
          _$SearchRepositoriesResponseImpl<Item>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(Item) toJsonItem) {
    return _$$SearchRepositoriesResponseImplToJson<Item>(this, toJsonItem);
  }
}

abstract class _SearchRepositoriesResponse<Item>
    implements SearchResponse<Item> {
  const factory _SearchRepositoriesResponse(
          {required final int totalCount,
          required final bool incompleteResults,
          required final List<Item> items}) =
      _$SearchRepositoriesResponseImpl<Item>;

  factory _SearchRepositoriesResponse.fromJson(
          Map<String, dynamic> json, Item Function(Object?) fromJsonItem) =
      _$SearchRepositoriesResponseImpl<Item>.fromJson;

  @override
  int get totalCount;
  @override
  bool get incompleteResults;
  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$SearchRepositoriesResponseImplCopyWith<Item,
          _$SearchRepositoriesResponseImpl<Item>>
      get copyWith => throw _privateConstructorUsedError;
}
