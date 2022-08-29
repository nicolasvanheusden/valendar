

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: blue064F60,
          width: 2,
        ),
        color: widget.task.atNight ? blue064F60 : Colors.white,
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
    );
  }
}