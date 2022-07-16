part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.addTask(Task task) = _AddTask;
  const factory TaskEvent.deleteTask(Task task) = _DeleteTask;
  const factory TaskEvent.updateTask(Task task) = _UpdateTask;
  
  
  
}