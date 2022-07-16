part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
    const TaskState._();
  factory TaskState({
    required final List<Task> tasks
  }) = _TaskState;

  factory TaskState.initial() => _TaskState(tasks: []);
}
