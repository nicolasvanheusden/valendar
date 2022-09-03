
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:valendar/domain/member/member.dart';
import 'package:valendar/domain/task/task.dart';
import 'package:valendar/infrastructure/task/task_dto.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> with HydratedMixin{
  
  TaskBloc() : super(TaskState.initial()) {
    on<_AddTask>((event, emit) {
      emit(state.copyWith(tasks: [...state.tasks, event.task]));
    });
    on<_DeleteTask>((event, emit) {
      state.tasks.remove(event.task);
      emit(state.copyWith(tasks: state.tasks));
    });
    on<_UpdateTask>((event, emit) {
      emit(state.copyWith(tasks: [
        ...state.tasks.map((task) => task.uuid == event.task.uuid ? event.task : task)
      ]));
    });
  }

  @override
  TaskState? fromJson(Map<String, dynamic> json) {
    final List<dynamic> tasks = json['tasks'];
    return TaskState(tasks: tasks.map(
      (e) => TaskDTO.fromJson(e)
      .toDomain())
      .toList()
    );
  }
  
  @override
  Map<String, dynamic>? toJson(TaskState state) {
    return {
      'tasks': state.tasks
        .map((member) => TaskDTO.fromDomain(member).toJson())
        .toList()
    };
  }
}
