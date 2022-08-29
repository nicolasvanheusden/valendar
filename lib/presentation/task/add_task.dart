
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/application/member/member_bloc.dart';
import 'package:valendar/application/task/task_bloc.dart';
import 'package:valendar/domain/member/member.dart';
import 'package:valendar/domain/task/task.dart';
import 'package:valendar/presentation/core/colors.dart';


class AddTask extends StatefulWidget {
  
  const AddTask({Key? key, required this.selectedDate}) : super(key: key);

  final DateTime selectedDate;

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _hoursController = TextEditingController();
  final List<Member> _currentMembersToAdd = [];
  bool atNight = false;
  
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
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
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
                          fontSize: MediaQuery.of(context).size.width * 0.05
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
                        controller: _hoursController,
                        decoration: InputDecoration(
                          labelText: 'Heures',
                          labelStyle: GoogleFonts.montserrat(
                            color: blue064F60
                          )
                        ),
                        validator: (value) {
                          if (int.tryParse(value ?? '') == null) {
                            return 'Doit être un chiffre';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                      Row(
                        children: [
                          Text(
                            'De nuit : ',
                            style: GoogleFonts.montserrat(
                              color: blue064F60,
                              fontSize: MediaQuery.of(context).size.width * 0.04,
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
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Column(
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
                                                          fontSize: MediaQuery.of(context).size.width * 0.04
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
                            ),
                          );
                        }
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            BlocProvider.of<TaskBloc>(context).add(TaskEvent.addTask(
                              Task(
                                title: _titleController.text,
                                hours: int.parse(_hoursController.text),
                                members: _currentMembersToAdd,
                                atNight: atNight,
                                date: widget.selectedDate
                              )
                            ));
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