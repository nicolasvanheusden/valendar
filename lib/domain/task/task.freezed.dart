// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

  _Task call(
      {required String uuid,
      required String title,
      required int hours,
      required List<Member> members,
      required bool atNight,
      required DateTime date,
      required bool completed}) {
    return _Task(
      uuid: uuid,
      title: title,
      hours: hours,
      members: members,
      atNight: atNight,
      date: date,
      completed: completed,
    );
  }
}

/// @nodoc
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  String get uuid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get hours => throw _privateConstructorUsedError;
  List<Member> get members => throw _privateConstructorUsedError;
  bool get atNight => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String title,
      int hours,
      List<Member> members,
      bool atNight,
      DateTime date,
      bool completed});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? title = freezed,
    Object? hours = freezed,
    Object? members = freezed,
    Object? atNight = freezed,
    Object? date = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      atNight: atNight == freezed
          ? _value.atNight
          : atNight // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String title,
      int hours,
      List<Member> members,
      bool atNight,
      DateTime date,
      bool completed});
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? title = freezed,
    Object? hours = freezed,
    Object? members = freezed,
    Object? atNight = freezed,
    Object? date = freezed,
    Object? completed = freezed,
  }) {
    return _then(_Task(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
      atNight: atNight == freezed
          ? _value.atNight
          : atNight // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Task extends _Task {
  _$_Task(
      {required this.uuid,
      required this.title,
      required this.hours,
      required this.members,
      required this.atNight,
      required this.date,
      required this.completed})
      : super._();

  @override
  final String uuid;
  @override
  final String title;
  @override
  final int hours;
  @override
  final List<Member> members;
  @override
  final bool atNight;
  @override
  final DateTime date;
  @override
  final bool completed;

  @override
  String toString() {
    return 'Task(uuid: $uuid, title: $title, hours: $hours, members: $members, atNight: $atNight, date: $date, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Task &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.hours, hours) &&
            const DeepCollectionEquality().equals(other.members, members) &&
            const DeepCollectionEquality().equals(other.atNight, atNight) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.completed, completed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(hours),
      const DeepCollectionEquality().hash(members),
      const DeepCollectionEquality().hash(atNight),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(completed));

  @JsonKey(ignore: true)
  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);
}

abstract class _Task extends Task {
  factory _Task(
      {required String uuid,
      required String title,
      required int hours,
      required List<Member> members,
      required bool atNight,
      required DateTime date,
      required bool completed}) = _$_Task;
  _Task._() : super._();

  @override
  String get uuid;
  @override
  String get title;
  @override
  int get hours;
  @override
  List<Member> get members;
  @override
  bool get atNight;
  @override
  DateTime get date;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$TaskCopyWith<_Task> get copyWith => throw _privateConstructorUsedError;
}
