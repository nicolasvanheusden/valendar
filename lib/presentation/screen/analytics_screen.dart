import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/application/member/member_bloc.dart';
import 'package:valendar/application/task/task_bloc.dart';
import 'package:valendar/domain/week/week.dart';
import 'package:valendar/presentation/core/colors.dart';

class AnalyticsScreen extends StatefulWidget {

  const AnalyticsScreen({Key? key}) : super(key: key);
  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}




class _AnalyticsScreenState extends State<AnalyticsScreen> {

  late final Week _currentWeek;

  @override
  void initState() {
    super.initState();
     _currentWeek = Week.initialize(DateTime.now()).initializeNullableFields();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Card(
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
                          fontSize: 18,
                          fontWeight: FontWeight.w500 
                        )
                        ),
                      )
                    ),
                  ),
                  Expanded(
                    child: BlocBuilder<MemberBloc, MemberState>(
                      builder: (context, memberState) {
                        return Column(
                          children: List.generate(
                            memberState.members.length,
                            (index) => Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 3
                              ),
                              child: Text(
                                memberState.members.elementAt(index).name,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  color: blue064F60,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500 
                                )
                              ),
                            )
                          )
                        );
                      }
                    ),
                  )
                ]      
              ),
            ),
            ...List.generate(_currentWeek.dayNames.length,
              (index) => Column(
                children: [
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
                          '${_currentWeek.dayNames.elementAt(index).substring(0, 1)}\n${_currentWeek.daysNumber.elementAt(index)}',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                          color: blue064F60,
                          fontSize: 18,
                          fontWeight: FontWeight.w500 
                        )
                        ),
                      )
                    ),
                  ),
                  BlocBuilder<TaskBloc, TaskState>( 
                  builder: (context, taskState) {
                    final map = taskState.tasksByMember();
                    return BlocBuilder<MemberBloc, MemberState>(
                      builder: (context, memberState) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height - 160,
                          width: MediaQuery.of(context).size.width / 9 - (3 * 6),
                          child: Column(
                            children: List.generate(
                                memberState.members.length, (memberIndex) {
                                  final tasksFromMember = taskState.tasksByMemberForMember(
                                  memberState.members.elementAt(memberIndex),
                                  _currentWeek.daysNumber.elementAt(index),
                                  map
                                );
                                return Container(
                                  width: MediaQuery.of(context).size.width / 9 - (3 * 6),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 3
                                  ),
                                  child: Text(
                                    tasksFromMember.isEmpty ? '0' : tasksFromMember.first.hours.toString(),
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: blue064F60,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500 
                                    )
                                  ),
                                );
                                }
                              ),
                            ),
                        );
                        }
                      );
                  },
                  )
                ],
              )
            ),
            Column(
              children: [
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
                          fontSize: 18,
                          fontWeight: FontWeight.w500 
                        )
                        ),
                      )
                    ),
                  ),
              ],
            )
          ]
        ),
            // Expanded(
            //   child: BlocBuilder<TaskBloc, TaskState>( 
            //     builder: (context, taskState) {
            //       final map = taskState.tasksByMember();
            //       return BlocBuilder<MemberBloc, MemberState>(
            //         builder: (context, memberState) {
            //           return ListView.builder(
            //             itemCount: memberState.members.length,
            //             itemBuilder: (context, memberIndex) {
            //               return Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                 children: [
            //                   Expanded(
            //                     child: Container(
            //                       child: Text(
            //                         memberState.members.elementAt(memberIndex).name,
            //                         style: GoogleFonts.montserrat(
            //                           color: blue064F60,
            //                           fontSize: 18,
            //                           fontWeight: FontWeight.w500 
            //                         )
            //                       ),
            //                     ),
            //                   ),
            //                   ...List.generate(
            //                     7,
            //                     (index) {
            //                       final tasksFromMember = taskState.tasksByMemberForMember(
            //                         memberState.members.elementAt(memberIndex),
            //                         _currentWeek.daysNumber.elementAt(index),
            //                         map
            //                       );
            //                       return Container(
            //                         width: MediaQuery.of(context).size.width / 9 - (3 * 6),
            //                         padding: const EdgeInsets.symmetric(
            //                         vertical: 10,
            //                         horizontal: 3
            //                       ),
            //                       decoration: const BoxDecoration(
            //                       border: Border.symmetric(
            //                         vertical: BorderSide(
            //                           color: blue064F60,
            //                         )
            //                         ),
            //                       ),
            //                       child: Text(
            //                         tasksFromMember.isEmpty ? '0' : tasksFromMember.first.hours.toString(),
            //                         style: GoogleFonts.montserrat(
            //                           color: blue064F60,
            //                           fontSize: 18,
            //                           fontWeight: FontWeight.w500 
            //                         )
            //                       ),
            //                     );
            //                   }),
            //                   Container(
            //                     width: MediaQuery.of(context).size.width / 9 - (3 * 6),
            //                     padding: const EdgeInsets.symmetric(
            //                       vertical: 10,
            //                       horizontal: 3
            //                     ),
            //                     decoration: const BoxDecoration(
            //                       border: Border.symmetric(
            //                         vertical: BorderSide(
            //                           color: blue064F60,
            //                         )
            //                         ),
            //                     ),
            //                     child: Text(
            //                       '8',
            //                       style: GoogleFonts.montserrat(
            //                         color: blue064F60,
            //                         fontSize: 18,
            //                         fontWeight: FontWeight.w500 
            //                       )
            //                     ),
            //                   ),
            //                 ],
            //               );
            //             }
            //           );
            //         },
            //       );
            //     },
            //   )
            // )
      ),
    );
  }
}

// Text(
//               'Semaine du ${_currentWeek.daysNumber.first}/${_currentWeek.monthNumber} au ${_currentWeek.daysNumber.last}/${_currentWeek.nextMonthNumber ?? _currentWeek.monthNumber}',
//               style: GoogleFonts.montserrat(
//                 color: Colors.black,
//                 fontSize: 18,
//               )
//             ), 