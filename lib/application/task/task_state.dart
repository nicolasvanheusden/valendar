part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
    const TaskState._();
  factory TaskState({
    required final List<Task> tasks
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

  List<Task> tasksByMemberForMember(Member member, int day, Map<Member,List<Task>> tasksByMember) {
    return tasksByMember[member]?.where((element) => element.date.day == day).toList() ?? [];
  }
}
