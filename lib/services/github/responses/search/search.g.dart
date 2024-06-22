// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchRepositoriesResponseImpl<Item>
    _$$SearchRepositoriesResponseImplFromJson<Item>(
  Map<String, dynamic> json,
  Item Function(Object? json) fromJsonItem,
) =>
        _$SearchRepositoriesResponseImpl<Item>(
          totalCount: (json['total_count'] as num).toInt(),
          incompleteResults: json['incomplete_results'] as bool,
          items: (json['items'] as List<dynamic>).map(fromJsonItem).toList(),
        );

Map<String, dynamic> _$$SearchRepositoriesResponseImplToJson<Item>(
  _$SearchRepositoriesResponseImpl<Item> instance,
  Object? Function(Item value) toJsonItem,
) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items.map(toJsonItem).toList(),
    };
