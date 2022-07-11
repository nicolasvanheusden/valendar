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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskDTO _$TaskDTOFromJson(Map<String, dynamic> json) {
  return _TaskDTO.fromJson(json);
}

/// @nodoc
class _$TaskDTOTearOff {
  const _$TaskDTOTearOff();

  _TaskDTO call(
      {required String title,
      required int hours,
      required List<MemberDTO> members,
      required bool atNight}) {
    return _TaskDTO(
      title: title,
      hours: hours,
      members: members,
      atNight: atNight,
    );
  }

  TaskDTO fromJson(Map<String, Object?> json) {
    return TaskDTO.fromJson(json);
  }
}

/// @nodoc
const $TaskDTO = _$TaskDTOTearOff();

/// @nodoc
mixin _$TaskDTO {
  String get title => throw _privateConstructorUsedError;
  int get hours => throw _privateConstructorUsedError;
  List<MemberDTO> get members => throw _privateConstructorUsedError;
  bool get atNight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDTOCopyWith<TaskDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDTOCopyWith<$Res> {
  factory $TaskDTOCopyWith(TaskDTO value, $Res Function(TaskDTO) then) =
      _$TaskDTOCopyWithImpl<$Res>;
  $Res call({String title, int hours, List<MemberDTO> members, bool atNight});
}

/// @nodoc
class _$TaskDTOCopyWithImpl<$Res> implements $TaskDTOCopyWith<$Res> {
  _$TaskDTOCopyWithImpl(this._value, this._then);

  final TaskDTO _value;
  // ignore: unused_field
  final $Res Function(TaskDTO) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? hours = freezed,
    Object? members = freezed,
    Object? atNight = freezed,
  }) {
    return _then(_value.copyWith(
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
    ));
  }
}

/// @nodoc
abstract class _$TaskDTOCopyWith<$Res> implements $TaskDTOCopyWith<$Res> {
  factory _$TaskDTOCopyWith(_TaskDTO value, $Res Function(_TaskDTO) then) =
      __$TaskDTOCopyWithImpl<$Res>;
  @override
  $Res call({String title, int hours, List<MemberDTO> members, bool atNight});
}

/// @nodoc
class __$TaskDTOCopyWithImpl<$Res> extends _$TaskDTOCopyWithImpl<$Res>
    implements _$TaskDTOCopyWith<$Res> {
  __$TaskDTOCopyWithImpl(_TaskDTO _value, $Res Function(_TaskDTO) _then)
      : super(_value, (v) => _then(v as _TaskDTO));

  @override
  _TaskDTO get _value => super._value as _TaskDTO;

  @override
  $Res call({
    Object? title = freezed,
    Object? hours = freezed,
    Object? members = freezed,
    Object? atNight = freezed,
  }) {
    return _then(_TaskDTO(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskDTO extends _TaskDTO {
  _$_TaskDTO(
      {required this.title,
      required this.hours,
      required this.members,
      required this.atNight})
      : super._();

  factory _$_TaskDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TaskDTOFromJson(json);

  @override
  final String title;
  @override
  final int hours;
  @override
  final List<MemberDTO> members;
  @override
  final bool atNight;

  @override
  String toString() {
    return 'TaskDTO(title: $title, hours: $hours, members: $members, atNight: $atNight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskDTO &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.hours, hours) &&
            const DeepCollectionEquality().equals(other.members, members) &&
            const DeepCollectionEquality().equals(other.atNight, atNight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(hours),
      const DeepCollectionEquality().hash(members),
      const DeepCollectionEquality().hash(atNight));

  @JsonKey(ignore: true)
  @override
  _$TaskDTOCopyWith<_TaskDTO> get copyWith =>
      __$TaskDTOCopyWithImpl<_TaskDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskDTOToJson(this);
  }
}

abstract class _TaskDTO extends TaskDTO {
  factory _TaskDTO(
      {required String title,
      required int hours,
      required List<MemberDTO> members,
      required bool atNight}) = _$_TaskDTO;
  _TaskDTO._() : super._();

  factory _TaskDTO.fromJson(Map<String, dynamic> json) = _$_TaskDTO.fromJson;

  @override
  String get title;
  @override
  int get hours;
  @override
  List<MemberDTO> get members;
  @override
  bool get atNight;
  @override
  @JsonKey(ignore: true)
  _$TaskDTOCopyWith<_TaskDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
