// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntryDate _$$_EntryDateFromJson(Map<String, dynamic> json) => _$_EntryDate(
      expenseId: json['expenseId'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$$_EntryDateToJson(_$_EntryDate instance) =>
    <String, dynamic>{
      'expenseId': instance.expenseId,
      'dateTime': instance.dateTime.toIso8601String(),
    };
