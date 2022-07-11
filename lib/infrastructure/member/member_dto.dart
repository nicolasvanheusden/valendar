

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valendar/domain/member/member.dart';

part 'member_dto.freezed.dart';
part 'member_dto.g.dart';

@freezed
class MemberDTO with _$MemberDTO {
  const MemberDTO._();
  factory MemberDTO({
    required final String name,
    required final String role,
    required final DateTime startContract,
    required final DateTime? endContract,
  }) = _MemberDTO;

  factory MemberDTO.fromDomain(Member member) => MemberDTO(
    name: member.name,
    role: member.role,
    startContract: member.startContract,
    endContract: member.endContract
  );

  Member toDomain() {
    return Member(
      name: name,
      role: role,
      startContract: startContract,
      endContract: endContract
    );
  }

  factory MemberDTO.fromJson(Map<String, dynamic> json) => _$MemberDTOFromJson(json);
  
}