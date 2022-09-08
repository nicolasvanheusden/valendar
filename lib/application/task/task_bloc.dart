

import 'dart:io';

import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:valendar/domain/member/member.dart';
import 'package:valendar/domain/task/task.dart';
import 'package:valendar/domain/week/week.dart';
import 'package:valendar/infrastructure/task/task_dto.dart';
import 'package:valendar/domain/utils/date_time_ext.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> with HydratedMixin{
  
  TaskBloc() : super(TaskState.initial()) {
    on<_AddTask>((event, emit) {
      emit(state.copyWith(tasks: [
        ...state.tasks,
        ...splitTaskInMultipleDays(event.task)]
      ));
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
    on<_ExportCSV>((event, emit) async {

      final appDocDir = await getApplicationDocumentsDirectory();
      String path = '${appDocDir.path}/${event.range.start.displayOnlyDate}_${event.range.end.displayOnlyDate}.csv';
      final File file = File(path);

      final Map<Member, List<int>> fullMemberHours = {};

      final tasksByMember = state.tasksByMember();

      for (var day = DateUtils.dateOnly(event.range.start);
            DateUtils.dateOnly(event.range.end).difference(day).inDays >= 0; 
            day = day.add(const Duration(days: 1))) {
          for (var entry in tasksByMember.entries) {
            fullMemberHours.update(
              entry.key,
              (list) => [...list, state.sumOfWeekHours(entry.key, day, day)],
              ifAbsent: () => [state.sumOfWeekHours(entry.key, day, day)]);
          }
      }

      

      
      List<List<String>> csvData = [
      // headers
      <String>[
        'Nom', 
        ...Week.initialize(event.range.start).days
        .map((e) => '${Week.weekdayNames.elementAt(e.weekday-1)} ${e.day}').toList(),
        'Total'],
      // data
      ...fullMemberHours.entries.map(
        (entry) => [entry.key.name, ...entry.value.map((e) => e.toString()), entry.value.fold<int>(0, (prev, curr) => prev+curr).toString()]
      )
      //

      ];
      String csv = const ListToCsvConverter().convert(csvData);
      await file.writeAsString(csv);

    });
  }

  /// Takes a [Task] and return a [List] of the same [Task] split on the period from 
  /// [startDate] to [endDate]
  List<Task> splitTaskInMultipleDays(Task task) {
    final List<Task> tasks = [];

    final numberOfDays = task.endDate.difference(task.startDate).inDays;

    if (numberOfDays > 0) {
      for (var i = 0; i < numberOfDays; i++) {
        tasks.add(Task(
          uuid: const Uuid().v1(),
          title: task.title,
          hours: task.hours ~/ numberOfDays,
          members: task.members,
          atNight: task.atNight,
          date: task.startDate.add(Duration(days: i)),
          completed: task.completed,
          startDate: task.startDate,
          endDate: task.endDate)
        );
      }
    } else {
      tasks.add(task);
    }

    
    return tasks;
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