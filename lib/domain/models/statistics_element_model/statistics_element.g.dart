// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatisticsElement _$$_StatisticsElementFromJson(Map<String, dynamic> json) =>
    _$_StatisticsElement(
      categoryTitle: json['categoryTitle'] as String,
      countOfEntries: json['countOfEntries'] as int,
      totalAmount: json['totalAmount'] as int,
      monthShare: (json['monthShare'] as num).toDouble(),
      icon: CategoryIcon.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StatisticsElementToJson(
        _$_StatisticsElement instance) =>
    <String, dynamic>{
      'categoryTitle': instance.categoryTitle,
      'countOfEntries': instance.countOfEntries,
      'totalAmount': instance.totalAmount,
      'monthShare': instance.monthShare,
      'icon': instance.icon.toJson(),
    };
