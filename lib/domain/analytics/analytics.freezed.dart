// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'analytics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnalyticsTearOff {
  const _$AnalyticsTearOff();

  _Analytics call(
      {required Week week,
      required List<Member> members,
      required List<Task> tasks,
      required Map<Member, List<int>> memberWeekHours}) {
    return _Analytics(
      week: week,
      members: members,
      tasks: tasks,
      memberWeekHours: memberWeekHours,
    );
  }
}

/// @nodoc
const $Analytics = _$AnalyticsTearOff();

/// @nodoc
mixin _$Analytics {
  Week get week => throw _privateConstructorUsedError;
  List<Member> get members => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;
  Map<Member, List<int>> get memberWeekHours =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalyticsCopyWith<Analytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsCopyWith<$Res> {
  factory $AnalyticsCopyWith(Analytics value, $Res Function(Analytics) then) =
      _$AnalyticsCopyWithImpl<$Res>;
  $Res call(
      {Week week,
      List<Member> members,
      List<Task> tasks,
      Map<Member, List<int>> memberWeekHours});

  $WeekCopyWith<$Res> get week;
}

/// @nodoc
class _$AnalyticsCopyWithImpl<$Res> implements $AnalyticsCopyWith<$Res> {
  _$AnalyticsCopyWithImpl(this._value, this._then);

  final Analytics _value;
  // ignore: unused_field
  final $Res Function(Analytics) _then;

  @override
  $Res call({
    Object? week = freezed,
    Object? members = freezed,
    Object? tasks = freezed,
    Object? memberWeekHours = freezed,
  }) {
    return _then(_value.copyWith(
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as Week,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      memberWeekHours: memberWeekHours == freezed
          ? _value.memberWeekHours
          : memberWeekHours // ignore: cast_nullable_to_non_nullable
              as Map<Member, List<int>>,
    ));
  }

  @override
  $WeekCopyWith<$Res> get week {
    return $WeekCopyWith<$Res>(_value.week, (value) {
      return _then(_value.copyWith(week: value));
    });
  }
}

/// @nodoc
abstract class _$AnalyticsCopyWith<$Res> implements $AnalyticsCopyWith<$Res> {
  factory _$AnalyticsCopyWith(
          _Analytics value, $Res Function(_Analytics) then) =
      __$AnalyticsCopyWithImpl<$Res>;
  @override
  $Res call(
      {Week week,
      List<Member> members,
      List<Task> tasks,
      Map<Member, List<int>> memberWeekHours});

  @override
  $WeekCopyWith<$Res> get week;
}

/// @nodoc
class __$AnalyticsCopyWithImpl<$Res> extends _$AnalyticsCopyWithImpl<$Res>
    implements _$AnalyticsCopyWith<$Res> {
  __$AnalyticsCopyWithImpl(_Analytics _value, $Res Function(_Analytics) _then)
      : super(_value, (v) => _then(v as _Analytics));

  @override
  _Analytics get _value => super._value as _Analytics;

  @override
  $Res call({
    Object? week = freezed,
    Object? members = freezed,
    Object? tasks = freezed,
    Object? memberWeekHours = freezed,
  }) {
    return _then(_Analytics(
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as Week,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      memberWeekHours: memberWeekHours == freezed
          ? _value.memberWeekHours
          : memberWeekHours // ignore: cast_nullable_to_non_nullable
              as Map<Member, List<int>>,
    ));
  }
}

/// @nodoc

class _$_Analytics extends _Analytics {
  _$_Analytics(
      {required this.week,
      required this.members,
      required this.tasks,
      required this.memberWeekHours})
      : super._();

  @override
  final Week week;
  @override
  final List<Member> members;
  @override
  final List<Task> tasks;
  @override
  final Map<Member, List<int>> memberWeekHours;

  @override
  String toString() {
    return 'Analytics(week: $week, members: $members, tasks: $tasks, memberWeekHours: $memberWeekHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Analytics &&
            const DeepCollectionEquality().equals(other.week, week) &&
            const DeepCollectionEquality().equals(other.members, members) &&
            const DeepCollectionEquality().equals(other.tasks, tasks) &&
            const DeepCollectionEquality()
                .equals(other.memberWeekHours, memberWeekHours));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(week),
      const DeepCollectionEquality().hash(members),
      const DeepCollectionEquality().hash(tasks),
      const DeepCollectionEquality().hash(memberWeekHours));

  @JsonKey(ignore: true)
  @override
  _$AnalyticsCopyWith<_Analytics> get copyWith =>
      __$AnalyticsCopyWithImpl<_Analytics>(this, _$identity);
}

abstract class _Analytics extends Analytics {
  factory _Analytics(
      {required Week week,
      required List<Member> members,
      required List<Task> tasks,
      required Map<Member, List<int>> memberWeekHours}) = _$_Analytics;
  _Analytics._() : super._();

  @override
  Week get week;
  @override
  List<Member> get members;
  @override
  List<Task> get tasks;
  @override
  Map<Member, List<int>> get memberWeekHours;
  @override
  @JsonKey(ignore: true)
  _$AnalyticsCopyWith<_Analytics> get copyWith =>
      throw _privateConstructorUsedError;
}
