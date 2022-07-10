// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'week.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Week {
  List<String> get dayNames => throw _privateConstructorUsedError;
  List<int> get daysNumber => throw _privateConstructorUsedError;
  String get monthName => throw _privateConstructorUsedError;
  int get monthNumber => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String? get nextMonthName => throw _privateConstructorUsedError;
  int? get nextMonthNumber => throw _privateConstructorUsedError;
  int? get nextYear => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeekCopyWith<Week> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekCopyWith<$Res> {
  factory $WeekCopyWith(Week value, $Res Function(Week) then) =
      _$WeekCopyWithImpl<$Res>;
  $Res call(
      {List<String> dayNames,
      List<int> daysNumber,
      String monthName,
      int monthNumber,
      int year,
      String? nextMonthName,
      int? nextMonthNumber,
      int? nextYear});
}

/// @nodoc
class _$WeekCopyWithImpl<$Res> implements $WeekCopyWith<$Res> {
  _$WeekCopyWithImpl(this._value, this._then);

  final Week _value;
  // ignore: unused_field
  final $Res Function(Week) _then;

  @override
  $Res call({
    Object? dayNames = freezed,
    Object? daysNumber = freezed,
    Object? monthName = freezed,
    Object? monthNumber = freezed,
    Object? year = freezed,
    Object? nextMonthName = freezed,
    Object? nextMonthNumber = freezed,
    Object? nextYear = freezed,
  }) {
    return _then(_value.copyWith(
      dayNames: dayNames == freezed
          ? _value.dayNames
          : dayNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      daysNumber: daysNumber == freezed
          ? _value.daysNumber
          : daysNumber // ignore: cast_nullable_to_non_nullable
              as List<int>,
      monthName: monthName == freezed
          ? _value.monthName
          : monthName // ignore: cast_nullable_to_non_nullable
              as String,
      monthNumber: monthNumber == freezed
          ? _value.monthNumber
          : monthNumber // ignore: cast_nullable_to_non_nullable
              as int,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      nextMonthName: nextMonthName == freezed
          ? _value.nextMonthName
          : nextMonthName // ignore: cast_nullable_to_non_nullable
              as String?,
      nextMonthNumber: nextMonthNumber == freezed
          ? _value.nextMonthNumber
          : nextMonthNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      nextYear: nextYear == freezed
          ? _value.nextYear
          : nextYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_WeekCopyWith<$Res> implements $WeekCopyWith<$Res> {
  factory _$$_WeekCopyWith(_$_Week value, $Res Function(_$_Week) then) =
      __$$_WeekCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> dayNames,
      List<int> daysNumber,
      String monthName,
      int monthNumber,
      int year,
      String? nextMonthName,
      int? nextMonthNumber,
      int? nextYear});
}

/// @nodoc
class __$$_WeekCopyWithImpl<$Res> extends _$WeekCopyWithImpl<$Res>
    implements _$$_WeekCopyWith<$Res> {
  __$$_WeekCopyWithImpl(_$_Week _value, $Res Function(_$_Week) _then)
      : super(_value, (v) => _then(v as _$_Week));

  @override
  _$_Week get _value => super._value as _$_Week;

  @override
  $Res call({
    Object? dayNames = freezed,
    Object? daysNumber = freezed,
    Object? monthName = freezed,
    Object? monthNumber = freezed,
    Object? year = freezed,
    Object? nextMonthName = freezed,
    Object? nextMonthNumber = freezed,
    Object? nextYear = freezed,
  }) {
    return _then(_$_Week(
      dayNames: dayNames == freezed
          ? _value._dayNames
          : dayNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      daysNumber: daysNumber == freezed
          ? _value._daysNumber
          : daysNumber // ignore: cast_nullable_to_non_nullable
              as List<int>,
      monthName: monthName == freezed
          ? _value.monthName
          : monthName // ignore: cast_nullable_to_non_nullable
              as String,
      monthNumber: monthNumber == freezed
          ? _value.monthNumber
          : monthNumber // ignore: cast_nullable_to_non_nullable
              as int,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      nextMonthName: nextMonthName == freezed
          ? _value.nextMonthName
          : nextMonthName // ignore: cast_nullable_to_non_nullable
              as String?,
      nextMonthNumber: nextMonthNumber == freezed
          ? _value.nextMonthNumber
          : nextMonthNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      nextYear: nextYear == freezed
          ? _value.nextYear
          : nextYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Week extends _Week {
  _$_Week(
      {required final List<String> dayNames,
      required final List<int> daysNumber,
      required this.monthName,
      required this.monthNumber,
      required this.year,
      this.nextMonthName,
      this.nextMonthNumber,
      this.nextYear})
      : _dayNames = dayNames,
        _daysNumber = daysNumber,
        super._();

  final List<String> _dayNames;
  @override
  List<String> get dayNames {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayNames);
  }

  final List<int> _daysNumber;
  @override
  List<int> get daysNumber {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daysNumber);
  }

  @override
  final String monthName;
  @override
  final int monthNumber;
  @override
  final int year;
  @override
  final String? nextMonthName;
  @override
  final int? nextMonthNumber;
  @override
  final int? nextYear;

  @override
  String toString() {
    return 'Week(dayNames: $dayNames, daysNumber: $daysNumber, monthName: $monthName, monthNumber: $monthNumber, year: $year, nextMonthName: $nextMonthName, nextMonthNumber: $nextMonthNumber, nextYear: $nextYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Week &&
            const DeepCollectionEquality().equals(other._dayNames, _dayNames) &&
            const DeepCollectionEquality()
                .equals(other._daysNumber, _daysNumber) &&
            const DeepCollectionEquality().equals(other.monthName, monthName) &&
            const DeepCollectionEquality()
                .equals(other.monthNumber, monthNumber) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality()
                .equals(other.nextMonthName, nextMonthName) &&
            const DeepCollectionEquality()
                .equals(other.nextMonthNumber, nextMonthNumber) &&
            const DeepCollectionEquality().equals(other.nextYear, nextYear));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dayNames),
      const DeepCollectionEquality().hash(_daysNumber),
      const DeepCollectionEquality().hash(monthName),
      const DeepCollectionEquality().hash(monthNumber),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(nextMonthName),
      const DeepCollectionEquality().hash(nextMonthNumber),
      const DeepCollectionEquality().hash(nextYear));

  @JsonKey(ignore: true)
  @override
  _$$_WeekCopyWith<_$_Week> get copyWith =>
      __$$_WeekCopyWithImpl<_$_Week>(this, _$identity);
}

abstract class _Week extends Week {
  factory _Week(
      {required final List<String> dayNames,
      required final List<int> daysNumber,
      required final String monthName,
      required final int monthNumber,
      required final int year,
      final String? nextMonthName,
      final int? nextMonthNumber,
      final int? nextYear}) = _$_Week;
  _Week._() : super._();

  @override
  List<String> get dayNames;
  @override
  List<int> get daysNumber;
  @override
  String get monthName;
  @override
  int get monthNumber;
  @override
  int get year;
  @override
  String? get nextMonthName;
  @override
  int? get nextMonthNumber;
  @override
  int? get nextYear;
  @override
  @JsonKey(ignore: true)
  _$$_WeekCopyWith<_$_Week> get copyWith => throw _privateConstructorUsedError;
}
