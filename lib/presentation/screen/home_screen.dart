

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/application/member/member_bloc.dart';
import 'package:valendar/application/task/task_bloc.dart';
import 'package:valendar/domain/member/member.dart';
import 'package:valendar/domain/task/task.dart';
import 'package:valendar/domain/week/week.dart';
import 'package:valendar/presentation/core/colors.dart';
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
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _hoursController = TextEditingController();
  final List<Member> _currentMembersToAdd = [];
  bool atNight = false;

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
            fontSize: 30,
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
      body: SafeArea(
        child: Column(
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
                        fontSize: 18,
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  showGeneralDialog(
                    barrierLabel: 'Label',
                    barrierDismissible: true,
                    barrierColor: Colors.black.withOpacity(0.5),
                    transitionDuration: const Duration(milliseconds: 700),
                    context: context,
                    pageBuilder: (context, anim1, anim2) {
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return Align(
                            alignment: Alignment.bottomCenter,
                            child: Card(
                              margin: const EdgeInsets.only(bottom: 50, left: 12, right: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: SizedBox(
                                height: 500,
                                child: SizedBox.expand(
                                  child: Form(
                                    key: _formKey,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'Ajouter une tâche',
                                            style: GoogleFonts.montserrat(
                                              color: blue064F60,
                                              fontSize: 20
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          TextFormField(
                                            controller: _titleController,
                                            decoration: InputDecoration(
                                              labelText: 'Titre',
                                              labelStyle: GoogleFonts.montserrat(
                                                color: blue064F60
                                              )
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          TextFormField(
                                            controller: _titleController,
                                            decoration: InputDecoration(
                                              labelText: 'Heures',
                                              labelStyle: GoogleFonts.montserrat(
                                                color: blue064F60
                                              )
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'De nuit : ',
                                                style: GoogleFonts.montserrat(
                                                  color: blue064F60,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              CupertinoSwitch(
                                                value: atNight,
                                                onChanged: (value) => setState(() {
                                                  atNight = value;
                                                })
                                              )
                                            ],
                                          ),
                                          BlocBuilder<MemberBloc, MemberState>(
                                            builder: (context, state) {
                                              return SizedBox(
                                                height: 200,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      'Membres : ',
                                                      textAlign: TextAlign.start,
                                                      style: GoogleFonts.montserrat(
                                                        color: blue064F60,
                                                        fontSize: 20
                                                      ),
                                                    ),
                                                    Wrap(
                                                      children: _currentMembersToAdd.map((member) => GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            _currentMembersToAdd.remove(member);
                                                          });
                                                        },
                                                        child: Container(
                                                          padding: const EdgeInsets.all(8),
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(20),
                                                            border: Border.all(
                                                              color: blue064F60
                                                            )
                                                          ),
                                                          child: Text(
                                                            member.name,
                                                            style: GoogleFonts.montserrat(
                                                              color: blue064F60
                                                            ),),
                                                        ),
                                                      )).toList()
                                                    ),
                                                    Expanded(
                                                      child: ListView(
                                                        children: state.members.map(
                                                          (member) => LayoutBuilder(
                                                            builder: (context, constraints) {
                                                              return Visibility(
                                                                visible: !_currentMembersToAdd.contains(member),
                                                                child: GestureDetector(
                                                                  onTap: () {
                                                                    setState(() {
                                                                      _currentMembersToAdd.add(member);
                                                                    });
                                                                  },
                                                                  child: Container(
                                                                    width: constraints.maxWidth,
                                                                    margin: const EdgeInsets.all(5),
                                                                    decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(5),
                                                                      border: Border.all(
                                                                        color: blue064F60
                                                                      )
                                                                    ),
                                                                    child: Padding(
                                                                      padding: const EdgeInsets.all(8.0),
                                                                      child: Row(
                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            member.name,
                                                                            style: GoogleFonts.montserrat(
                                                                              color: blue064F60,
                                                                              fontSize: 20
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Selectionnez',
                                                                            style: GoogleFonts.montserrat(
                                                                              color: blue064F60,
                                                                              fontSize: 15
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                          )
                                                        ).toList(),
                                                      ),
                                                    ),
                                                  ]
                                                ),
                                              );
                                            }
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              BlocProvider.of<TaskBloc>(context).add(TaskEvent.addTask(
                                                Task(
                                                  title: _titleController.text,
                                                  hours: int.parse(_hoursController.text),
                                                  members: _currentMembersToAdd,
                                                  atNight: atNight,
                                                  date: _selectedDate
                                                )
                                              ));
                                            },
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all<Color>(yellowFFAD47),
                                              fixedSize: MaterialStateProperty.all<Size>(Size(
                                                MediaQuery.of(context).size.width * 0.5,
                                                40
                                              )),
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30)
                                              ))
                                            ),
                                            child: Text(
                                              'Ajouter',
                                              style: GoogleFonts.montserrat(
                                                fontSize: 16
                                              ),
                                            ) 
                                          )
                                        ],
                                      ),
                                    )
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                      );
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
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                )
              ),
            ),
            BlocBuilder<TaskBloc, TaskState>(
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
            ),
          ],
        ),
      ),
    );
  }
}

