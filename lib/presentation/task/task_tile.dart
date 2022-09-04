

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/application/task/task_bloc.dart';
import 'package:valendar/domain/task/task.dart';
import 'package:valendar/presentation/core/colors.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {
        if (direction.name == DismissDirection.startToEnd.name) {
          BlocProvider.of<TaskBloc>(context).add(TaskEvent.updateTask(widget.task.copyWith(completed: true)));
        } else {
          BlocProvider.of<TaskBloc>(context).add(TaskEvent.deleteTask(widget.task));
        }
      },
      dismissThresholds: <DismissDirection, double>{
        DismissDirection.startToEnd: widget.task.completed ? 1.0 : 0.0,
        DismissDirection.endToStart: 0.0
      },
      secondaryBackground: Container(
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width - 40,
          top: 30,
          bottom: 30,
          right: 40,
        ),
        alignment: Alignment.centerRight,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.red,
            width: 2,
          ),
        ),
        child: const Icon(Icons.delete, color: Colors.red,),
      ),
      background: Container(
        margin: EdgeInsets.only(
          left: 40,
          top: 30,
          bottom: 30,
          right: MediaQuery.of(context).size.width - 40,
        ),
        height: 20,
        alignment: Alignment.centerLeft,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.green,
            width: 2,
          ),
        ) ,
        child: const Icon(Icons.check, color: Colors.green,),
      ),
      child: Container(
        height: 100,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: widget.task.completed ? Colors.green : blue064F60,
            width: 2            
          ),
          color: widget.task.atNight ? blue064F60 : Colors.transparent,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.all(10),
                child: Wrap(
                  direction: Axis.vertical,
                  children: widget.task.members.map(
                    (member) => Text(
                      member.name,
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: widget.task.atNight ? Colors.white : Colors.black,
                      ),
                    ),
                    ).toList()
                  ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.task.title,
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: widget.task.atNight ? Colors.white : Colors.black,
                    ),
                  ),
                  Text(
                    '${widget.task.hours.toString()}h',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: widget.task.atNight ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}