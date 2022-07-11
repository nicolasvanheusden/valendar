
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valendar/domain/member/member.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const Task._();
  factory Task({
    required final String title,
    required final int hours,
    required final List<Member> members,
    required final bool atNight
  }) = _Task;
}