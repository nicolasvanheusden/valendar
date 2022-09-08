// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberDTO _$MemberDTOFromJson(Map<String, dynamic> json) {
  return _MemberDTO.fromJson(json);
}

/// @nodoc
mixin _$MemberDTO {
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  DateTime get startContract => throw _privateConstructorUsedError;
  DateTime? get endContract => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberDTOCopyWith<MemberDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDTOCopyWith<$Res> {
  factory $MemberDTOCopyWith(MemberDTO value, $Res Function(MemberDTO) then) =
      _$MemberDTOCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String role,
      DateTime startContract,
      DateTime? endContract});
}

/// @nodoc
class _$MemberDTOCopyWithImpl<$Res> implements $MemberDTOCopyWith<$Res> {
  _$MemberDTOCopyWithImpl(this._value, this._then);

  final MemberDTO _value;
  // ignore: unused_field
  final $Res Function(MemberDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? role = freezed,
    Object? startContract = freezed,
    Object? endContract = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      startContract: startContract == freezed
          ? _value.startContract
          : startContract // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endContract: endContract == freezed
          ? _value.endContract
          : endContract // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_MemberDTOCopyWith<$Res> implements $MemberDTOCopyWith<$Res> {
  factory _$$_MemberDTOCopyWith(
          _$_MemberDTO value, $Res Function(_$_MemberDTO) then) =
      __$$_MemberDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String role,
      DateTime startContract,
      DateTime? endContract});
}

/// @nodoc
class __$$_MemberDTOCopyWithImpl<$Res> extends _$MemberDTOCopyWithImpl<$Res>
    implements _$$_MemberDTOCopyWith<$Res> {
  __$$_MemberDTOCopyWithImpl(
      _$_MemberDTO _value, $Res Function(_$_MemberDTO) _then)
      : super(_value, (v) => _then(v as _$_MemberDTO));

  @override
  _$_MemberDTO get _value => super._value as _$_MemberDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? role = freezed,
    Object? startContract = freezed,
    Object? endContract = freezed,
  }) {
    return _then(_$_MemberDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      startContract: startContract == freezed
          ? _value.startContract
          : startContract // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endContract: endContract == freezed
          ? _value.endContract
          : endContract // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberDTO extends _MemberDTO {
  _$_MemberDTO(
      {required this.name,
      required this.role,
      required this.startContract,
      required this.endContract})
      : super._();

  factory _$_MemberDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MemberDTOFromJson(json);

  @override
  final String name;
  @override
  final String role;
  @override
  final DateTime startContract;
  @override
  final DateTime? endContract;

  @override
  String toString() {
    return 'MemberDTO(name: $name, role: $role, startContract: $startContract, endContract: $endContract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberDTO &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality()
                .equals(other.startContract, startContract) &&
            const DeepCollectionEquality()
                .equals(other.endContract, endContract));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(startContract),
      const DeepCollectionEquality().hash(endContract));

  @JsonKey(ignore: true)
  @override
  _$$_MemberDTOCopyWith<_$_MemberDTO> get copyWith =>
      __$$_MemberDTOCopyWithImpl<_$_MemberDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberDTOToJson(
      this,
    );
  }
}

abstract class _MemberDTO extends MemberDTO {
  factory _MemberDTO(
      {required final String name,
      required final String role,
      required final DateTime startContract,
      required final DateTime? endContract}) = _$_MemberDTO;
  _MemberDTO._() : super._();

  factory _MemberDTO.fromJson(Map<String, dynamic> json) =
      _$_MemberDTO.fromJson;

  @override
  String get name;
  @override
  String get role;
  @override
  DateTime get startContract;
  @override
  DateTime? get endContract;
  @override
  @JsonKey(ignore: true)
  _$$_MemberDTOCopyWith<_$_MemberDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
