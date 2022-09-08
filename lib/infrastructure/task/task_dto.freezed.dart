// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskDTO _$TaskDTOFromJson(Map<String, dynamic> json) {
  return _TaskDTO.fromJson(json);
}

/// @nodoc
mixin _$TaskDTO {
  String get uuid => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get hours => throw _privateConstructorUsedError;
  List<MemberDTO> get members => throw _privateConstructorUsedError;
  bool get atNight => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDTOCopyWith<TaskDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDTOCopyWith<$Res> {
  factory $TaskDTOCopyWith(TaskDTO value, $Res Function(TaskDTO) then) =
      _$TaskDTOCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String id,
      String title,
      int hours,
      List<MemberDTO> members,
      bool atNight,
      DateTime date,
      bool completed,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class _$TaskDTOCopyWithImpl<$Res> implements $TaskDTOCopyWith<$Res> {
  _$TaskDTOCopyWithImpl(this._value, this._then);

  final TaskDTO _value;
  // ignore: unused_field
  final $Res Function(TaskDTO) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? hours = freezed,
    Object? members = freezed,
    Object? atNight = freezed,
    Object? date = freezed,
    Object? completed = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
              as List<MemberDTO>,
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
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskDTOCopyWith<$Res> implements $TaskDTOCopyWith<$Res> {
  factory _$$_TaskDTOCopyWith(
          _$_TaskDTO value, $Res Function(_$_TaskDTO) then) =
      __$$_TaskDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String id,
      String title,
      int hours,
      List<MemberDTO> members,
      bool atNight,
      DateTime date,
      bool completed,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class __$$_TaskDTOCopyWithImpl<$Res> extends _$TaskDTOCopyWithImpl<$Res>
    implements _$$_TaskDTOCopyWith<$Res> {
  __$$_TaskDTOCopyWithImpl(_$_TaskDTO _value, $Res Function(_$_TaskDTO) _then)
      : super(_value, (v) => _then(v as _$_TaskDTO));

  @override
  _$_TaskDTO get _value => super._value as _$_TaskDTO;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? hours = freezed,
    Object? members = freezed,
    Object? atNight = freezed,
    Object? date = freezed,
    Object? completed = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_TaskDTO(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberDTO>,
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
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskDTO extends _TaskDTO {
  _$_TaskDTO(
      {required this.uuid,
      required this.id,
      required this.title,
      required this.hours,
      required final List<MemberDTO> members,
      required this.atNight,
      required this.date,
      required this.completed,
      required this.startDate,
      required this.endDate})
      : _members = members,
        super._();

  factory _$_TaskDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TaskDTOFromJson(json);

  @override
  final String uuid;
  @override
  final String id;
  @override
  final String title;
  @override
  final int hours;
  final List<MemberDTO> _members;
  @override
  List<MemberDTO> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final bool atNight;
  @override
  final DateTime date;
  @override
  final bool completed;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'TaskDTO(uuid: $uuid, id: $id, title: $title, hours: $hours, members: $members, atNight: $atNight, date: $date, completed: $completed, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskDTO &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.hours, hours) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other.atNight, atNight) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.completed, completed) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(hours),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(atNight),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(completed),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  _$$_TaskDTOCopyWith<_$_TaskDTO> get copyWith =>
      __$$_TaskDTOCopyWithImpl<_$_TaskDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskDTOToJson(
      this,
    );
  }
}

abstract class _TaskDTO extends TaskDTO {
  factory _TaskDTO(
      {required final String uuid,
      required final String id,
      required final String title,
      required final int hours,
      required final List<MemberDTO> members,
      required final bool atNight,
      required final DateTime date,
      required final bool completed,
      required final DateTime startDate,
      required final DateTime endDate}) = _$_TaskDTO;
  _TaskDTO._() : super._();

  factory _TaskDTO.fromJson(Map<String, dynamic> json) = _$_TaskDTO.fromJson;

  @override
  String get uuid;
  @override
  String get id;
  @override
  String get title;
  @override
  int get hours;
  @override
  List<MemberDTO> get members;
  @override
  bool get atNight;
  @override
  DateTime get date;
  @override
  bool get completed;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_TaskDTOCopyWith<_$_TaskDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
