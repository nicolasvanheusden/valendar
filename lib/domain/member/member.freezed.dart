// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Member {
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  DateTime get startContract => throw _privateConstructorUsedError;
  DateTime? get endContract => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String role,
      DateTime startContract,
      DateTime? endContract});
}

/// @nodoc
class _$MemberCopyWithImpl<$Res> implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  final Member _value;
  // ignore: unused_field
  final $Res Function(Member) _then;

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
abstract class _$$_MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$$_MemberCopyWith(_$_Member value, $Res Function(_$_Member) then) =
      __$$_MemberCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String role,
      DateTime startContract,
      DateTime? endContract});
}

/// @nodoc
class __$$_MemberCopyWithImpl<$Res> extends _$MemberCopyWithImpl<$Res>
    implements _$$_MemberCopyWith<$Res> {
  __$$_MemberCopyWithImpl(_$_Member _value, $Res Function(_$_Member) _then)
      : super(_value, (v) => _then(v as _$_Member));

  @override
  _$_Member get _value => super._value as _$_Member;

  @override
  $Res call({
    Object? name = freezed,
    Object? role = freezed,
    Object? startContract = freezed,
    Object? endContract = freezed,
  }) {
    return _then(_$_Member(
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

class _$_Member extends _Member {
  _$_Member(
      {required this.name,
      required this.role,
      required this.startContract,
      required this.endContract})
      : super._();

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
    return 'Member(name: $name, role: $role, startContract: $startContract, endContract: $endContract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Member &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality()
                .equals(other.startContract, startContract) &&
            const DeepCollectionEquality()
                .equals(other.endContract, endContract));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(startContract),
      const DeepCollectionEquality().hash(endContract));

  @JsonKey(ignore: true)
  @override
  _$$_MemberCopyWith<_$_Member> get copyWith =>
      __$$_MemberCopyWithImpl<_$_Member>(this, _$identity);
}

abstract class _Member extends Member {
  factory _Member(
      {required final String name,
      required final String role,
      required final DateTime startContract,
      required final DateTime? endContract}) = _$_Member;
  _Member._() : super._();

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
  _$$_MemberCopyWith<_$_Member> get copyWith =>
      throw _privateConstructorUsedError;
}
