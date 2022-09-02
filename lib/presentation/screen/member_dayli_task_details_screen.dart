

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/domain/task/task.dart';
import 'package:valendar/domain/week/week.dart';
import 'package:valendar/presentation/core/colors.dart';
import 'package:valendar/presentation/task/task_tile.dart';

class MemberDayliTaskDetail extends StatelessWidget {


  const MemberDayliTaskDetail({super.key, required this.memberTasks, required this.selectedDate});

  final List<Task> memberTasks;
  final DateTime selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteFAFAFA,
        foregroundColor: blue064F60,
        title: Text(
              '${Week.weekdayNames.elementAt(selectedDate.weekday-1)} ${selectedDate.day.toString()} ${Week.monthNames.elementAt(selectedDate.month-1)}',
              style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: blue064F60,
                height: 2,
              ),
            ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: memberTasks
                  .where((task) => task.date.day == selectedDate.day && task.date.month == selectedDate.month && task.date.year == selectedDate.year)
                  .map((e) => TaskTile(task: e))
                  .toList(),
              ),
            ),
          ],
        )
      ),
    );
  }
}