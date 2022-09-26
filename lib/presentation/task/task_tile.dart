


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/application/task/task_bloc.dart';
import 'package:valendar/domain/task/task.dart';
import 'package:valendar/presentation/core/colors.dart';
import 'package:valendar/presentation/task/add_task.dart';

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
    return GestureDetector(
      onTap: () => showGeneralDialog(
        barrierLabel: 'Update task',
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.5),
        transitionDuration: const Duration(milliseconds: 700),
        context: context,
        pageBuilder: (context, anim1, anim2) {
          return AddTask(selectedDate: widget.task.date, taskToUpdate: widget.task,);
        },
        transitionBuilder: (context, anim1, anim2, child) {
          return SlideTransition(
            position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
            child: child,
          );
        },
      ),
      child: Dismissible(
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
          height: MediaQuery.of(context).size.height * 0.18,
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
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AutoSizeText(
                      widget.task.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: widget.task.atNight ? Colors.white : Colors.black,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      constraints: const BoxConstraints(
                        maxHeight: 50
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Wrap(
                        direction: Axis.vertical,
                        children: widget.task.members.map(
                          (member) => CircleAvatar(
                            backgroundColor: member.color,
                            child: Text(
                              member.name.substring(0, 1),
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: widget.task.atNight ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                          ).toList()
                        ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Text(
                      '${widget.task.hours.toString()}h',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: widget.task.atNight ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}