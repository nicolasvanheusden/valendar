

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
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListView(
            children: widget.task.members.map(
              (member) => Text(
                '${member.name}: ${member.role}',
                style: GoogleFonts.montserrat(
                  fontSize: 18
                ),
              ),
              ).toList()
            ),
        ],
      ),
    );
  }
}