
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valendar/domain/member/member.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const Task._();
  factory Task({
    required final String uuid,
    required final String id,
    required final String title,
    required final int hours,
    required final List<Member> members,
    required final bool atNight,
    required final DateTime date,
    required final bool completed,
    required final DateTime startDate,
    required final DateTime endDate,
  }) = _Task;
}