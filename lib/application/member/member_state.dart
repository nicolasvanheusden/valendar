part of 'member_bloc.dart';

@freezed
class MemberState with _$MemberState {

  const MemberState._();
  factory MemberState({
    required final List<Member> members
  }) = _MemberState;

  factory MemberState.initial() => _MemberState(members: []);
}
