// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MemberEventTearOff {
  const _$MemberEventTearOff();

  _AddMember addMember(Member member) {
    return _AddMember(
      member,
    );
  }

  _DeleteMember deleteMember(Member member) {
    return _DeleteMember(
      member,
    );
  }

  _UpdateMember updateMember(Member member) {
    return _UpdateMember(
      member,
    );
  }
}

/// @nodoc
const $MemberEvent = _$MemberEventTearOff();

/// @nodoc
mixin _$MemberEvent {
  Member get member => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Member member) addMember,
    required TResult Function(Member member) deleteMember,
    required TResult Function(Member member) updateMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Member member)? addMember,
    TResult Function(Member member)? deleteMember,
    TResult Function(Member member)? updateMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Member member)? addMember,
    TResult Function(Member member)? deleteMember,
    TResult Function(Member member)? updateMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMember value) addMember,
    required TResult Function(_DeleteMember value) deleteMember,
    required TResult Function(_UpdateMember value) updateMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddMember value)? addMember,
    TResult Function(_DeleteMember value)? deleteMember,
    TResult Function(_UpdateMember value)? updateMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMember value)? addMember,
    TResult Function(_DeleteMember value)? deleteMember,
    TResult Function(_UpdateMember value)? updateMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberEventCopyWith<MemberEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberEventCopyWith<$Res> {
  factory $MemberEventCopyWith(
          MemberEvent value, $Res Function(MemberEvent) then) =
      _$MemberEventCopyWithImpl<$Res>;
  $Res call({Member member});

  $MemberCopyWith<$Res> get member;
}

/// @nodoc
class _$MemberEventCopyWithImpl<$Res> implements $MemberEventCopyWith<$Res> {
  _$MemberEventCopyWithImpl(this._value, this._then);

  final MemberEvent _value;
  // ignore: unused_field
  final $Res Function(MemberEvent) _then;

  @override
  $Res call({
    Object? member = freezed,
  }) {
    return _then(_value.copyWith(
      member: member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
    ));
  }

  @override
  $MemberCopyWith<$Res> get member {
    return $MemberCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value));
    });
  }
}

/// @nodoc
abstract class _$AddMemberCopyWith<$Res> implements $MemberEventCopyWith<$Res> {
  factory _$AddMemberCopyWith(
          _AddMember value, $Res Function(_AddMember) then) =
      __$AddMemberCopyWithImpl<$Res>;
  @override
  $Res call({Member member});

  @override
  $MemberCopyWith<$Res> get member;
}

/// @nodoc
class __$AddMemberCopyWithImpl<$Res> extends _$MemberEventCopyWithImpl<$Res>
    implements _$AddMemberCopyWith<$Res> {
  __$AddMemberCopyWithImpl(_AddMember _value, $Res Function(_AddMember) _then)
      : super(_value, (v) => _then(v as _AddMember));

  @override
  _AddMember get _value => super._value as _AddMember;

  @override
  $Res call({
    Object? member = freezed,
  }) {
    return _then(_AddMember(
      member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
    ));
  }
}

/// @nodoc

class _$_AddMember implements _AddMember {
  const _$_AddMember(this.member);

  @override
  final Member member;

  @override
  String toString() {
    return 'MemberEvent.addMember(member: $member)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddMember &&
            const DeepCollectionEquality().equals(other.member, member));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(member));

  @JsonKey(ignore: true)
  @override
  _$AddMemberCopyWith<_AddMember> get copyWith =>
      __$AddMemberCopyWithImpl<_AddMember>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Member member) addMember,
    required TResult Function(Member member) deleteMember,
    required TResult Function(Member member) updateMember,
  }) {
    return addMember(member);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Member member)? addMember,
    TResult Function(Member member)? deleteMember,
    TResult Function(Member member)? updateMember,
  }) {
    return addMember?.call(member);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Member member)? addMember,
    TResult Function(Member member)? deleteMember,
    TResult Function(Member member)? updateMember,
    required TResult orElse(),
  }) {
    if (addMember != null) {
      return addMember(member);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMember value) addMember,
    required TResult Function(_DeleteMember value) deleteMember,
    required TResult Function(_UpdateMember value) updateMember,
  }) {
    return addMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddMember value)? addMember,
    TResult Function(_DeleteMember value)? deleteMember,
    TResult Function(_UpdateMember value)? updateMember,
  }) {
    return addMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMember value)? addMember,
    TResult Function(_DeleteMember value)? deleteMember,
    TResult Function(_UpdateMember value)? updateMember,
    required TResult orElse(),
  }) {
    if (addMember != null) {
      return addMember(this);
    }
    return orElse();
  }
}

abstract class _AddMember implements MemberEvent {
  const factory _AddMember(Member member) = _$_AddMember;

  @override
  Member get member;
  @override
  @JsonKey(ignore: true)
  _$AddMemberCopyWith<_AddMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteMemberCopyWith<$Res>
    implements $MemberEventCopyWith<$Res> {
  factory _$DeleteMemberCopyWith(
          _DeleteMember value, $Res Function(_DeleteMember) then) =
      __$DeleteMemberCopyWithImpl<$Res>;
  @override
  $Res call({Member member});

  @override
  $MemberCopyWith<$Res> get member;
}

/// @nodoc
class __$DeleteMemberCopyWithImpl<$Res> extends _$MemberEventCopyWithImpl<$Res>
    implements _$DeleteMemberCopyWith<$Res> {
  __$DeleteMemberCopyWithImpl(
      _DeleteMember _value, $Res Function(_DeleteMember) _then)
      : super(_value, (v) => _then(v as _DeleteMember));

  @override
  _DeleteMember get _value => super._value as _DeleteMember;

  @override
  $Res call({
    Object? member = freezed,
  }) {
    return _then(_DeleteMember(
      member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
    ));
  }
}

/// @nodoc

class _$_DeleteMember implements _DeleteMember {
  const _$_DeleteMember(this.member);

  @override
  final Member member;

  @override
  String toString() {
    return 'MemberEvent.deleteMember(member: $member)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteMember &&
            const DeepCollectionEquality().equals(other.member, member));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(member));

  @JsonKey(ignore: true)
  @override
  _$DeleteMemberCopyWith<_DeleteMember> get copyWith =>
      __$DeleteMemberCopyWithImpl<_DeleteMember>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Member member) addMember,
    required TResult Function(Member member) deleteMember,
    required TResult Function(Member member) updateMember,
  }) {
    return deleteMember(member);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Member member)? addMember,
    TResult Function(Member member)? deleteMember,
    TResult Function(Member member)? updateMember,
  }) {
    return deleteMember?.call(member);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Member member)? addMember,
    TResult Function(Member member)? deleteMember,
    TResult Function(Member member)? updateMember,
    required TResult orElse(),
  }) {
    if (deleteMember != null) {
      return deleteMember(member);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMember value) addMember,
    required TResult Function(_DeleteMember value) deleteMember,
    required TResult Function(_UpdateMember value) updateMember,
  }) {
    return deleteMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddMember value)? addMember,
    TResult Function(_DeleteMember value)? deleteMember,
    TResult Function(_UpdateMember value)? updateMember,
  }) {
    return deleteMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMember value)? addMember,
    TResult Function(_DeleteMember value)? deleteMember,
    TResult Function(_UpdateMember value)? updateMember,
    required TResult orElse(),
  }) {
    if (deleteMember != null) {
      return deleteMember(this);
    }
    return orElse();
  }
}

abstract class _DeleteMember implements MemberEvent {
  const factory _DeleteMember(Member member) = _$_DeleteMember;

  @override
  Member get member;
  @override
  @JsonKey(ignore: true)
  _$DeleteMemberCopyWith<_DeleteMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateMemberCopyWith<$Res>
    implements $MemberEventCopyWith<$Res> {
  factory _$UpdateMemberCopyWith(
          _UpdateMember value, $Res Function(_UpdateMember) then) =
      __$UpdateMemberCopyWithImpl<$Res>;
  @override
  $Res call({Member member});

  @override
  $MemberCopyWith<$Res> get member;
}

/// @nodoc
class __$UpdateMemberCopyWithImpl<$Res> extends _$MemberEventCopyWithImpl<$Res>
    implements _$UpdateMemberCopyWith<$Res> {
  __$UpdateMemberCopyWithImpl(
      _UpdateMember _value, $Res Function(_UpdateMember) _then)
      : super(_value, (v) => _then(v as _UpdateMember));

  @override
  _UpdateMember get _value => super._value as _UpdateMember;

  @override
  $Res call({
    Object? member = freezed,
  }) {
    return _then(_UpdateMember(
      member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
    ));
  }
}

/// @nodoc

class _$_UpdateMember implements _UpdateMember {
  const _$_UpdateMember(this.member);

  @override
  final Member member;

  @override
  String toString() {
    return 'MemberEvent.updateMember(member: $member)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateMember &&
            const DeepCollectionEquality().equals(other.member, member));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(member));

  @JsonKey(ignore: true)
  @override
  _$UpdateMemberCopyWith<_UpdateMember> get copyWith =>
      __$UpdateMemberCopyWithImpl<_UpdateMember>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Member member) addMember,
    required TResult Function(Member member) deleteMember,
    required TResult Function(Member member) updateMember,
  }) {
    return updateMember(member);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Member member)? addMember,
    TResult Function(Member member)? deleteMember,
    TResult Function(Member member)? updateMember,
  }) {
    return updateMember?.call(member);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Member member)? addMember,
    TResult Function(Member member)? deleteMember,
    TResult Function(Member member)? updateMember,
    required TResult orElse(),
  }) {
    if (updateMember != null) {
      return updateMember(member);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMember value) addMember,
    required TResult Function(_DeleteMember value) deleteMember,
    required TResult Function(_UpdateMember value) updateMember,
  }) {
    return updateMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddMember value)? addMember,
    TResult Function(_DeleteMember value)? deleteMember,
    TResult Function(_UpdateMember value)? updateMember,
  }) {
    return updateMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMember value)? addMember,
    TResult Function(_DeleteMember value)? deleteMember,
    TResult Function(_UpdateMember value)? updateMember,
    required TResult orElse(),
  }) {
    if (updateMember != null) {
      return updateMember(this);
    }
    return orElse();
  }
}

abstract class _UpdateMember implements MemberEvent {
  const factory _UpdateMember(Member member) = _$_UpdateMember;

  @override
  Member get member;
  @override
  @JsonKey(ignore: true)
  _$UpdateMemberCopyWith<_UpdateMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MemberStateTearOff {
  const _$MemberStateTearOff();

  _MemberState call({required List<Member> members}) {
    return _MemberState(
      members: members,
    );
  }
}

/// @nodoc
const $MemberState = _$MemberStateTearOff();

/// @nodoc
mixin _$MemberState {
  List<Member> get members => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberStateCopyWith<MemberState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberStateCopyWith<$Res> {
  factory $MemberStateCopyWith(
          MemberState value, $Res Function(MemberState) then) =
      _$MemberStateCopyWithImpl<$Res>;
  $Res call({List<Member> members});
}

/// @nodoc
class _$MemberStateCopyWithImpl<$Res> implements $MemberStateCopyWith<$Res> {
  _$MemberStateCopyWithImpl(this._value, this._then);

  final MemberState _value;
  // ignore: unused_field
  final $Res Function(MemberState) _then;

  @override
  $Res call({
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ));
  }
}

/// @nodoc
abstract class _$MemberStateCopyWith<$Res>
    implements $MemberStateCopyWith<$Res> {
  factory _$MemberStateCopyWith(
          _MemberState value, $Res Function(_MemberState) then) =
      __$MemberStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Member> members});
}

/// @nodoc
class __$MemberStateCopyWithImpl<$Res> extends _$MemberStateCopyWithImpl<$Res>
    implements _$MemberStateCopyWith<$Res> {
  __$MemberStateCopyWithImpl(
      _MemberState _value, $Res Function(_MemberState) _then)
      : super(_value, (v) => _then(v as _MemberState));

  @override
  _MemberState get _value => super._value as _MemberState;

  @override
  $Res call({
    Object? members = freezed,
  }) {
    return _then(_MemberState(
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ));
  }
}

/// @nodoc

class _$_MemberState extends _MemberState {
  _$_MemberState({required this.members}) : super._();

  @override
  final List<Member> members;

  @override
  String toString() {
    return 'MemberState(members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MemberState &&
            const DeepCollectionEquality().equals(other.members, members));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(members));

  @JsonKey(ignore: true)
  @override
  _$MemberStateCopyWith<_MemberState> get copyWith =>
      __$MemberStateCopyWithImpl<_MemberState>(this, _$identity);
}

abstract class _MemberState extends MemberState {
  factory _MemberState({required List<Member> members}) = _$_MemberState;
  _MemberState._() : super._();

  @override
  List<Member> get members;
  @override
  @JsonKey(ignore: true)
  _$MemberStateCopyWith<_MemberState> get copyWith =>
      throw _privateConstructorUsedError;
}
