
import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';
import 'package:valendar/application/member/member_bloc.dart';
import 'package:valendar/application/task/task_bloc.dart';
import 'package:valendar/domain/member/member.dart';
import 'package:valendar/domain/task/task.dart';
import 'package:valendar/presentation/core/colors.dart';


class AddTask extends StatefulWidget {
  
  const AddTask({Key? key, required this.selectedDate, this.taskToUpdate}) : super(key: key);

  final DateTime selectedDate;
  final Task? taskToUpdate;

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {

  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _titleController;
  late final TextEditingController _hoursController;
  late List<Member> _currentMembersToAdd;
  late DateTime _startDate;
  late DateTime _endDate;
  late bool atNight;


  @override
  void initState() {
    super.initState();
    _startDate = widget.taskToUpdate?.startDate ?? widget.selectedDate;
    _endDate = widget.taskToUpdate?.endDate ?? widget.selectedDate;
    _titleController = TextEditingController(text: widget.taskToUpdate?.title ?? '');
    _hoursController = TextEditingController(text: widget.taskToUpdate?.hours.toString() ?? '');
    _currentMembersToAdd = widget.taskToUpdate?.members ?? [];
    atNight = widget.taskToUpdate?.atNight ?? false;
  }
  
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Card(
          margin: const EdgeInsets.only(bottom: 50, left: 12, right: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox.expand(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Ajouter une tâche',
                            style: GoogleFonts.montserrat(
                              color: blue064F60,
                              fontSize: MediaQuery.of(context).size.width * 0.05
                            ),
                          ),
                          IconButton(
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.only(left: 30),
                            onPressed: () => setState(() {
                              atNight = !atNight;
                            }),
                            icon: Icon(
                              atNight 
                                ? Icons.nightlight
                                : Icons.nightlight_outlined,
                              color: purple2E1A47,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height *0.015,
                      ),
                      TextFormField(
                        controller: _titleController,
                        scrollPadding: EdgeInsets.zero,
                        decoration: InputDecoration(
                          labelText: 'Titre',
                          labelStyle: GoogleFonts.montserrat(
                            color: blue064F60
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          constraints: BoxConstraints.loose(Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height * 0.07))
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height *0.015,
                      ),
                      TextFormField(
                        controller: _hoursController,
                        scrollPadding: EdgeInsets.zero,
                        decoration: InputDecoration(
                          labelText: 'Heures',
                          labelStyle: GoogleFonts.montserrat(
                            color: blue064F60
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          constraints: BoxConstraints.loose(Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height * 0.07))
                        ),
                        validator: (value) {
                          if (int.tryParse(value ?? '') == null) {
                            return 'Doit être un chiffre';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                      Wrap(
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(blue064F60.withOpacity(0.07))
                            ),
                            onPressed: () async {
                              if (Platform.isIOS) {
                                showCupertinoModalPopup(
                                  context: context,                                  
                                  builder: (context) => Container(
                                    height: MediaQuery.of(context).size.height * 0.3,
                                    decoration: const BoxDecoration(
                                      color: whiteFAFAFA,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)
                                      )
                                    ),
                                    child: CupertinoDatePicker(
                                      mode: CupertinoDatePickerMode.date,
                                      initialDateTime: _startDate,
                                      minimumDate: DateTime.fromMillisecondsSinceEpoch(0),
                                      maximumDate: DateTime.now().add(const Duration(days: 365)),
                                      onDateTimeChanged: (value) => setState(() {
                                        _startDate = DateUtils.dateOnly(value);
                                      })
                                    ),
                                  )
                                );
                              } else {
                                _startDate = await showDatePicker(
                                  context: context,
                                  initialDate: _startDate,
                                  firstDate: DateTime.fromMillisecondsSinceEpoch(0),
                                  lastDate: DateTime.now().add(const Duration(days: 365)),
                                  currentDate: _startDate
                                ) ?? _startDate;
                                setState(() {});
                              }
                            },
                            child: Text(
                              'Date de début : ${_startDate.day}/${_startDate.month}/${_startDate.year}',
                              style: GoogleFonts.montserrat(
                                color: blue064F60
                              ),
                            )
                          ),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(blue064F60.withOpacity(0.07))
                            ),
                            onPressed: () async {
                              if (Platform.isIOS) {
                                showCupertinoModalPopup(
                                  context: context,
                                  builder: (context) => Container(
                                    height: MediaQuery.of(context).size.height * 0.3,
                                    decoration: const BoxDecoration(
                                      color: whiteFAFAFA,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)
                                      )
                                    ),
                                    child: CupertinoDatePicker(
                                      mode: CupertinoDatePickerMode.date,
                                      initialDateTime: _endDate,
                                      minimumDate: DateTime.fromMillisecondsSinceEpoch(0),
                                      maximumDate: DateTime.now().add(const Duration(days: 365)),
                                      onDateTimeChanged: (value) => setState(() {
                                        _endDate = DateUtils.dateOnly(value);
                                      })
                                    ),
                                  )
                                );
                              } else {
                                 _endDate = await showDatePicker(
                                  context: context,
                                  initialDate: _endDate,
                                  firstDate: DateTime.fromMillisecondsSinceEpoch(0),
                                  lastDate: DateTime.now().add(const Duration(days: 365)),
                                  currentDate: _endDate
                                ) ?? _endDate;
                                setState(() {});
                              }
                            },
                            child: Text(
                              'Date de fin : ${_endDate.day}/${_endDate.month}/${_endDate.year}      ',
                              style: GoogleFonts.montserrat(
                                color: blue064F60
                              ),
                            )
                          ),
                        ],
                      ),
                      Expanded(
                        child: BlocBuilder<MemberBloc, MemberState>(
                          builder: (context, state) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Membres : ',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.montserrat(
                                    color: blue064F60,
                                    fontSize: MediaQuery.of(context).size.width * 0.04
                                  ),
                                ),
                                Wrap(
                                  children: _currentMembersToAdd.map((member) => GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _currentMembersToAdd = [..._currentMembersToAdd.where((element) => element != member)];
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      margin: const EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: blue064F60
                                        )
                                      ),
                                      child: Text(
                                        '${member.name}  x',
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
                                                  _currentMembersToAdd = [..._currentMembersToAdd,  member];
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
                                                      SizedBox(
                                                        width: constraints.maxWidth * 0.5,
                                                        child: AutoSizeText(
                                                          member.name,
                                                          maxLines: 1, 
                                                          overflow: TextOverflow.ellipsis,
                                                          style: GoogleFonts.montserrat(
                                                            color: blue064F60,
                                                            fontSize: MediaQuery.of(context).size.width * 0.04
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        'Selectionnez',
                                                        style: GoogleFonts.montserrat(
                                                          color: blue064F60,
                                                          fontSize: MediaQuery.of(context).size.width * 0.035
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
                            );
                          }
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            if (widget.taskToUpdate != null) {
                              BlocProvider.of<TaskBloc>(context).add(TaskEvent.updateTask(
                                widget.taskToUpdate!.copyWith(
                                  title: _titleController.text,
                                  hours: int.parse(_hoursController.text),
                                  members: _currentMembersToAdd,
                                  atNight: atNight,
                                  date: widget.taskToUpdate!.date,
                                  completed: widget.taskToUpdate!.completed,
                                  startDate: _startDate,
                                  endDate: _endDate,
                                )
                              )
                              );
                            } else {
                              BlocProvider.of<TaskBloc>(context).add(TaskEvent.addTask(
                              Task(
                                uuid: const Uuid().v4(),
                                id: const Uuid().v1(),
                                title: _titleController.text,
                                hours: int.parse(_hoursController.text),
                                members: _currentMembersToAdd,
                                atNight: atNight,
                                date: widget.selectedDate,
                                completed: false,
                                startDate: _startDate,
                                endDate: _endDate,
                              )
                            ));
                            }
                            _titleController.clear();
                            _hoursController.clear();
                            Navigator.pop(context);
                          }
                          
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
      ),
    );
  }
}