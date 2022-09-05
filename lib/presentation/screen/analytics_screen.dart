import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/application/member/member_bloc.dart';
import 'package:valendar/application/task/task_bloc.dart';
import 'package:valendar/domain/week/week.dart';
import 'package:valendar/presentation/core/colors.dart';
import 'package:valendar/presentation/screen/member_dayli_task_details_screen.dart';

class AnalyticsScreen extends StatefulWidget {

  const AnalyticsScreen({Key? key}) : super(key: key);
  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {

  late Week _currentWeek;
  double _horizontalDragStart = 0;
  double _horizontalDragEnd = 0;

  @override
  void initState() {
    super.initState();
     _currentWeek = Week.initialize(DateTime.now()).initializeNullableFields();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onHorizontalDragStart: (details) {
            setState(() {
              _horizontalDragStart = details.localPosition.dx;
            });
          },
          onHorizontalDragUpdate: (details) {
            setState(() {
              _horizontalDragEnd = details.localPosition.dx;        
            });
          },
          onHorizontalDragEnd: (_) {
            print('-----------------------------------------------------');
            if (_horizontalDragEnd > _horizontalDragStart) {
              setState(() {
                _currentWeek = _currentWeek.previousWeek();
              });
            } else {
              setState(() {
                _currentWeek = _currentWeek.nextWeek();
              });
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Text(
                  '${_currentWeek.monthName}${_currentWeek.nextMonthName != _currentWeek.monthName ? ' - ${_currentWeek.nextMonthName}' : ''} ${_currentWeek.nextYear}',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: blue064F60,
                    height: 2,
                  ),
                ),
              ),
              _header(),
              Expanded(
                child: BlocBuilder<MemberBloc, MemberState>(
                  builder: (context, memberState) {
                    return BlocBuilder<TaskBloc, TaskState>(
                      builder: (context, taskState) {
                        final map = taskState.tasksByMember();
                        return ListView(
                          children: List.generate(
                            memberState.members.length,
                            (memberIndex) => Row(
                              children: [
                                // Member's name
                                Expanded(
                                  child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 3
                                  ),
                                  child: Text(
                                    memberState.members.elementAt(memberIndex).name,
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style: GoogleFonts.montserrat(
                                      color: blue064F60,
                                      fontSize: MediaQuery.of(context).size.width * 0.04,
                                      fontWeight: FontWeight.w500 
                                    )
                                  ),
                                )
                                ),
                                // Member's hours  
                                ...List.generate(
                                  _currentWeek.dayNames.length, (index) {                                  
                                    final tasksFromMember = taskState.tasksByMemberAtSpecificDay(
                                      memberState.members.elementAt(memberIndex),
                                      _currentWeek.days.elementAt(index),
                                      map
                                    );
                                  return Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => MemberDayliTaskDetail(
                                            memberTasks: tasksFromMember,
                                            selectedDate: _currentWeek.days.elementAt(index),
                                          ))
                                        ),
                                        child: Card(
                                          elevation: 0,
                                          color: Colors.transparent,
                                          child: Container(
                                            width: MediaQuery.of(context).size.width / 9 - (3 * 6),  
                                            height: 20,                                       
                                            margin: const EdgeInsets.symmetric(
                                              horizontal: 3,
                                              vertical: 10
                                            ),
                                            child: Stack(
                                              alignment: Alignment.center,                                          
                                              children: [
                                                if (tasksFromMember.where((task) => task.atNight).isNotEmpty)
                                                  AlignPositioned(
                                                    alignment: Alignment.topRight,
                                                    moveHorizontallyByChildHeight: 0.2,
                                                    child: Text(
                                                      'N',
                                                      style: GoogleFonts.montserrat(
                                                      color: purple2E1A47,
                                                      fontSize: MediaQuery.of(context).size.width * 0.02,
                                                      fontWeight: FontWeight.w500 
                                                      )
                                                    ),
                                                  ),
                                                Text(
                                                  tasksFromMember.isEmpty 
                                                    ? '0' 
                                                    : tasksFromMember.map((task) => task.hours)
                                                    .reduce((value, element) => value + element)
                                                    .toString(),
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.montserrat(
                                                    color: blue064F60,
                                                    fontSize: MediaQuery.of(context).size.width * 0.035,
                                                    fontWeight: FontWeight.w500 
                                                  )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                  }
                                ),
                                // Member's total hours
                                Card(
                                  elevation: 0,
                                  color: Colors.transparent,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width / 9 - (3 * 6),
                                    margin: const EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 3
                                    ),
                                    child: Text(
                                      taskState.sumOfWeekHours(
                                        memberState.members.elementAt(memberIndex),
                                        _currentWeek.days.first,
                                        _currentWeek.days.last
                                      ).toString(),
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        color: blue064F60,
                                        fontSize: MediaQuery.of(context).size.width * 0.035,
                                        fontWeight: FontWeight.w500 
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                        );
                      },
                    );
                  },
                )
              )
            ],
          ),
        ),
      ),
    );
  }



  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Name Case
        Expanded(
          child: Card(
            color: whiteFAFAFA,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            elevation: 5,
            shadowColor: whiteFAFAFA,
            child: Container(
              constraints: const BoxConstraints.expand(
                height: 60
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3
              ),
              child: Center(
                child: Text(
                  'N',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                  color: blue064F60,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.w500 
                )
                ),
              )
            ),    
          ),
        ),

        // Day Cases
        ...List.generate(_currentWeek.dayNames.length,
          (index) => Card(
            color: _currentWeek.days.elementAt(index).day == DateTime.now().day && _currentWeek.days.elementAt(index).month == DateTime.now().month ? blue064F60 : whiteFAFAFA,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            elevation: 5,
            shadowColor: whiteFAFAFA,
            child: Container(
              width: MediaQuery.of(context).size.width / 9 - (3 * 6) + 1,
              height: 60,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3
              ),
              child: Center(
                child: Text(
                  '${_currentWeek.dayNames.elementAt(index).substring(0, 1)}\n${_currentWeek.daysNumber.elementAt(index)}',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                  color: _currentWeek.days.elementAt(index).day == DateTime.now().day && _currentWeek.days.elementAt(index).month == DateTime.now().month ? whiteFAFAFA : blue064F60,
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  fontWeight: FontWeight.w500
                )
                ),
              )
            ),
          )
        ),

        // Total Case
        Card(
          color: whiteFAFAFA,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          elevation: 5,
          shadowColor: whiteFAFAFA,
          child: Container(
            width: MediaQuery.of(context).size.width / 9 - (3 * 6),
            height: 60,
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 3
            ),
            child: Center(
              child: Text(
                'T',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                color: blue064F60,
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.w500 
              )
              ),
            )
          ),
        ),
      ]
    );
  }
}
