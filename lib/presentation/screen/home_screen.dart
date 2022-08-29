

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/application/task/task_bloc.dart';
import 'package:valendar/domain/week/week.dart';
import 'package:valendar/presentation/core/colors.dart';
import 'package:valendar/presentation/task/add_task.dart';
import 'package:valendar/presentation/task/task_tile.dart';
import 'package:valendar/presentation/widget/no_result.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late final Week _currentWeek;
  late DateTime _selectedDate;
  

  @override
  void initState() {
    super.initState();
    _currentWeek = Week.initialize(DateTime.now()).initializeNullableFields();
    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        title: Text(
          _currentWeek.monthName,
          style: GoogleFonts.montserrat(
            color: blue064F60,
            fontSize: MediaQuery.of(context).size.width * 0.08,
          )
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_month_rounded,
              color: blue064F60,
              size: 30,
            )
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(_currentWeek.dayNames.length,
              (index) => Card(
                color: _selectedDate.day == _currentWeek.daysNumber.elementAt(index) 
                  ? blue064F60 
                  : whiteFAFAFA,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                elevation: 5,
                shadowColor: whiteFAFAFA,
                child: Container(
                  width: MediaQuery.of(context).size.width / 7 - (3 * 6),
                  height: 60,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 3
                  ),
                  child: Center(
                    child: Text(
                      '${_currentWeek.dayNames.elementAt(index).substring(0, 2)}\n${_currentWeek.daysNumber.elementAt(index)}',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                      color: _selectedDate.day == _currentWeek.daysNumber.elementAt(index) 
                        ? whiteFAFAFA 
                        : blue064F60,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.w500 
                    )
                    ),
                  )
                ),
              )
            ),
          ),
          const Divider(
            height: 50,
            thickness: 1.3,
            indent: 50,
            endIndent: 50,
          ),
          ElevatedButton(
            onPressed: () {
              showGeneralDialog(
                barrierLabel: 'Label',
                barrierDismissible: true,
                barrierColor: Colors.black.withOpacity(0.5),
                transitionDuration: const Duration(milliseconds: 700),
                context: context,
                pageBuilder: (context, anim1, anim2) {
                  return AddTask(selectedDate: _selectedDate);
                },
                transitionBuilder: (context, anim1, anim2, child) {
                  return SlideTransition(
                    position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
                    child: child,
                  );
                },
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(yellowFFAD47),
              fixedSize: MaterialStateProperty.all<Size>(Size(
                MediaQuery.of(context).size.width * 0.8,
                MediaQuery.of(context).size.height * 0.05
              )),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ))
            ),
            child: Text(
              'Ajouter une tâche',
              style: GoogleFonts.montserrat(
                color: whiteFAFAFA,
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.w500
              ),
            )
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return BlocBuilder<TaskBloc, TaskState>(
                  builder: (context, state) {
                    return state.tasks.isEmpty 
                      ? const NoResult(title: "Aucune tâche pour aujourd'hui",)
                      : ListView.builder(
                        itemCount: state.tasks.length,
                        itemBuilder: (context, index) {
                          return TaskTile(task: state.tasks.elementAt(index));
                        }
                      );
                    }
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}

