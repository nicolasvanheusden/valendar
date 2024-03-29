part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
    const TaskState._();
  factory TaskState({
    required final List<Task> tasks,
    final String? path,
  }) = _TaskState;

  factory TaskState.initial() => _TaskState(tasks: []);

  Map<Member,List<Task>> tasksByMember() {
    final tasksByMember = <Member,List<Task>>{};
    for (var task in tasks) {
      for (var member in task.members) {
        final list = tasksByMember.putIfAbsent(member, () => [task]);
        if (list.first != task) {
          list.add(task);
        }
        tasksByMember[member] = list;
      }
    }
    return tasksByMember;
  }

  List<Task> tasksByMemberAtSpecificDay(Member member, DateTime day, List<Task> tasksOfMember) {
    return tasksOfMember.where((element) => DateUtils.isSameDay(day, element.date))
      .toList();
  }

  int sumOfWeekHours(Member member, DateTime firstDate, DateTime lastDate) {
    return tasksByMember()[member]
      ?.where((element) {
        return DateUtils.dateOnly(element.date)
          .difference(DateUtils.dateOnly(firstDate)).inDays >= 0 
          && DateUtils.dateOnly(element.date)
          .difference(DateUtils.dateOnly(lastDate)).inDays <= 0;
      })
      .map((task) => task.hours)
      .fold(0, (value, element) => (value ?? 0) + element) ?? 0;
  }
}
