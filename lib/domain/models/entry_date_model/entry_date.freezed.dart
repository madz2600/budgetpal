// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntryDate _$EntryDateFromJson(Map<String, dynamic> json) {
  return _EntryDate.fromJson(json);
}

/// @nodoc
mixin _$EntryDate {
  int get expenseId => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntryDateCopyWith<EntryDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryDateCopyWith<$Res> {
  factory $EntryDateCopyWith(EntryDate value, $Res Function(EntryDate) then) =
      _$EntryDateCopyWithImpl<$Res, EntryDate>;
  @useResult
  $Res call({int expenseId, DateTime dateTime});
}

/// @nodoc
class _$EntryDateCopyWithImpl<$Res, $Val extends EntryDate>
    implements $EntryDateCopyWith<$Res> {
  _$EntryDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseId = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntryDateCopyWith<$Res> implements $EntryDateCopyWith<$Res> {
  factory _$$_EntryDateCopyWith(
          _$_EntryDate value, $Res Function(_$_EntryDate) then) =
      __$$_EntryDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int expenseId, DateTime dateTime});
}

/// @nodoc
class __$$_EntryDateCopyWithImpl<$Res>
    extends _$EntryDateCopyWithImpl<$Res, _$_EntryDate>
    implements _$$_EntryDateCopyWith<$Res> {
  __$$_EntryDateCopyWithImpl(
      _$_EntryDate _value, $Res Function(_$_EntryDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseId = null,
    Object? dateTime = null,
  }) {
    return _then(_$_EntryDate(
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntryDate implements _EntryDate {
  const _$_EntryDate({required this.expenseId, required this.dateTime});

  factory _$_EntryDate.fromJson(Map<String, dynamic> json) =>
      _$$_EntryDateFromJson(json);

  @override
  final int expenseId;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'EntryDate(expenseId: $expenseId, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntryDate &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, expenseId, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntryDateCopyWith<_$_EntryDate> get copyWith =>
      __$$_EntryDateCopyWithImpl<_$_EntryDate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntryDateToJson(
      this,
    );
  }
}

abstract class _EntryDate implements EntryDate {
  const factory _EntryDate(
      {required final int expenseId,
      required final DateTime dateTime}) = _$_EntryDate;

  factory _EntryDate.fromJson(Map<String, dynamic> json) =
      _$_EntryDate.fromJson;

  @override
  int get expenseId;
  @override
  DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_EntryDateCopyWith<_$_EntryDate> get copyWith =>
      throw _privateConstructorUsedError;
}
