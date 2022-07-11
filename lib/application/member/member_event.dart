part of 'member_bloc.dart';

@freezed
class MemberEvent with _$MemberEvent {

  const factory MemberEvent.addMember(Member member) = _AddMember;
  const factory MemberEvent.deleteMember(Member member) = _DeleteMember;
  const factory MemberEvent.updateMember(Member member) = _UpdateMember;
  
  
}