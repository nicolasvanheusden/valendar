
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valendar/domain/task/task.dart';
import 'package:valendar/infrastructure/member/member_dto.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

@freezed
class TaskDTO with _$TaskDTO {
  const TaskDTO._();
  factory TaskDTO({
    required final String uuid,
    required final String title,
    required final int hours,
    required final List<MemberDTO> members,
    required final bool atNight,
    required final DateTime date,
    required final bool completed,
    required final DateTime startDate,
    required final DateTime endDate,
  }) = _TaskDTO;


  factory TaskDTO.fromDomain(Task task) => TaskDTO(
    uuid: task.uuid,
    title: task.title,
    hours: task.hours,
    members: task.members
      .map((member) => MemberDTO.fromDomain(member))
      .toList(),
    atNight: task.atNight,
    date: task.date,
    completed: task.completed,
    startDate: task.startDate,
    endDate: task.endDate,
  );

  Task toDomain() => Task(
    uuid: uuid,
    title: title,
    hours: hours,
    members: members
      .map((memberDTO) => memberDTO.toDomain())
      .toList(),
    atNight: atNight,
    date: date,
    completed: completed,
    startDate: startDate,
    endDate: endDate,
  );

  factory TaskDTO.fromJson(Map<String, dynamic> json) => _$TaskDTOFromJson(json);
  
  
}