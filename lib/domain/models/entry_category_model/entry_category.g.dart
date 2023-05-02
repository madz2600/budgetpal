// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntryCategory _$$_EntryCategoryFromJson(Map<String, dynamic> json) =>
    _$_EntryCategory(
      categoryId: json['categoryId'] as int,
      title: json['title'] as String,
      type: json['type'] as String,
      orderNum: json['orderNum'] as int,
      icon: CategoryIcon.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EntryCategoryToJson(_$_EntryCategory instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'title': instance.title,
      'type': instance.type,
      'orderNum': instance.orderNum,
      'icon': instance.icon.toJson(),
    };
