import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valendar/domain/member/member.dart';
import 'package:valendar/domain/task/task.dart';
import 'package:valendar/domain/week/week.dart';

part 'analytics.freezed.dart';

@freezed
class Analytics with _$Analytics {
  const Analytics._();

  factory Analytics({
    required final Week week,
    required final List<Member> members,
    required final List<Task> tasks,
    required final Map<Member, List<int>> memberWeekHours
  }) = _Analytics;
}