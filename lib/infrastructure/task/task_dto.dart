
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valendar/domain/task/task.dart';
import 'package:valendar/infrastructure/member/member_dto.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

@freezed
class TaskDTO with _$TaskDTO {
  const TaskDTO._();
  factory TaskDTO({
    required final String title,
    required final int hours,
    required final List<MemberDTO> members,
    required final bool atNight,
    required final DateTime date
  }) = _TaskDTO;


  factory TaskDTO.fromDomain(Task task) => TaskDTO(
    title: task.title,
    hours: task.hours,
    members: task.members
      .map((member) => MemberDTO.fromDomain(member))
      .toList(),
    atNight: task.atNight,
    date: task.date
  );

  Task toDomain() => Task(
    title: title,
    hours: hours,
    members: members
      .map((memberDTO) => memberDTO.toDomain())
      .toList(),
    atNight: atNight,
    date: date
  );

  factory TaskDTO.fromJson(Map<String, dynamic> json) => _$TaskDTOFromJson(json);
  
  
}