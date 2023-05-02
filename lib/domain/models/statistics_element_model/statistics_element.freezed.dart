// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsElement _$StatisticsElementFromJson(Map<String, dynamic> json) {
  return _StatisticsElement.fromJson(json);
}

/// @nodoc
mixin _$StatisticsElement {
  String get categoryTitle => throw _privateConstructorUsedError;
  int get countOfEntries => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  double get monthShare => throw _privateConstructorUsedError;
  CategoryIcon get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsElementCopyWith<StatisticsElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsElementCopyWith<$Res> {
  factory $StatisticsElementCopyWith(
          StatisticsElement value, $Res Function(StatisticsElement) then) =
      _$StatisticsElementCopyWithImpl<$Res, StatisticsElement>;
  @useResult
  $Res call(
      {String categoryTitle,
      int countOfEntries,
      int totalAmount,
      double monthShare,
      CategoryIcon icon});

  $CategoryIconCopyWith<$Res> get icon;
}

/// @nodoc
class _$StatisticsElementCopyWithImpl<$Res, $Val extends StatisticsElement>
    implements $StatisticsElementCopyWith<$Res> {
  _$StatisticsElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryTitle = null,
    Object? countOfEntries = null,
    Object? totalAmount = null,
    Object? monthShare = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      categoryTitle: null == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      countOfEntries: null == countOfEntries
          ? _value.countOfEntries
          : countOfEntries // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      monthShare: null == monthShare
          ? _value.monthShare
          : monthShare // ignore: cast_nullable_to_non_nullable
              as double,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as CategoryIcon,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryIconCopyWith<$Res> get icon {
    return $CategoryIconCopyWith<$Res>(_value.icon, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatisticsElementCopyWith<$Res>
    implements $StatisticsElementCopyWith<$Res> {
  factory _$$_StatisticsElementCopyWith(_$_StatisticsElement value,
          $Res Function(_$_StatisticsElement) then) =
      __$$_StatisticsElementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String categoryTitle,
      int countOfEntries,
      int totalAmount,
      double monthShare,
      CategoryIcon icon});

  @override
  $CategoryIconCopyWith<$Res> get icon;
}

/// @nodoc
class __$$_StatisticsElementCopyWithImpl<$Res>
    extends _$StatisticsElementCopyWithImpl<$Res, _$_StatisticsElement>
    implements _$$_StatisticsElementCopyWith<$Res> {
  __$$_StatisticsElementCopyWithImpl(
      _$_StatisticsElement _value, $Res Function(_$_StatisticsElement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryTitle = null,
    Object? countOfEntries = null,
    Object? totalAmount = null,
    Object? monthShare = null,
    Object? icon = null,
  }) {
    return _then(_$_StatisticsElement(
      categoryTitle: null == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      countOfEntries: null == countOfEntries
          ? _value.countOfEntries
          : countOfEntries // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      monthShare: null == monthShare
          ? _value.monthShare
          : monthShare // ignore: cast_nullable_to_non_nullable
              as double,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as CategoryIcon,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_StatisticsElement implements _StatisticsElement {
  const _$_StatisticsElement(
      {required this.categoryTitle,
      required this.countOfEntries,
      required this.totalAmount,
      required this.monthShare,
      required this.icon});

  factory _$_StatisticsElement.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticsElementFromJson(json);

  @override
  final String categoryTitle;
  @override
  final int countOfEntries;
  @override
  final int totalAmount;
  @override
  final double monthShare;
  @override
  final CategoryIcon icon;

  @override
  String toString() {
    return 'StatisticsElement(categoryTitle: $categoryTitle, countOfEntries: $countOfEntries, totalAmount: $totalAmount, monthShare: $monthShare, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatisticsElement &&
            (identical(other.categoryTitle, categoryTitle) ||
                other.categoryTitle == categoryTitle) &&
            (identical(other.countOfEntries, countOfEntries) ||
                other.countOfEntries == countOfEntries) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.monthShare, monthShare) ||
                other.monthShare == monthShare) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, categoryTitle, countOfEntries,
      totalAmount, monthShare, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticsElementCopyWith<_$_StatisticsElement> get copyWith =>
      __$$_StatisticsElementCopyWithImpl<_$_StatisticsElement>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticsElementToJson(
      this,
    );
  }
}

abstract class _StatisticsElement implements StatisticsElement {
  const factory _StatisticsElement(
      {required final String categoryTitle,
      required final int countOfEntries,
      required final int totalAmount,
      required final double monthShare,
      required final CategoryIcon icon}) = _$_StatisticsElement;

  factory _StatisticsElement.fromJson(Map<String, dynamic> json) =
      _$_StatisticsElement.fromJson;

  @override
  String get categoryTitle;
  @override
  int get countOfEntries;
  @override
  int get totalAmount;
  @override
  double get monthShare;
  @override
  CategoryIcon get icon;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsElementCopyWith<_$_StatisticsElement> get copyWith =>
      throw _privateConstructorUsedError;
}
