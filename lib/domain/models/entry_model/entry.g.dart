// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Entry _$$_EntryFromJson(Map<String, dynamic> json) => _$_Entry(
      expenseId: json['expenseId'] as int,
      description: json['description'] as String,
      amount: json['amount'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
      categoryId: json['categoryId'] as int,
    );

Map<String, dynamic> _$$_EntryToJson(_$_Entry instance) => <String, dynamic>{
      'expenseId': instance.expenseId,
      'description': instance.description,
      'amount': instance.amount,
      'dateTime': instance.dateTime.toIso8601String(),
      'categoryId': instance.categoryId,
    };
