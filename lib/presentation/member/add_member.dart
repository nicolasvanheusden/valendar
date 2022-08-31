



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/application/member/member_bloc.dart';
import 'package:valendar/domain/member/member.dart';
import 'package:valendar/presentation/core/colors.dart';

class AddMember extends StatefulWidget {
  const AddMember({Key? key}) : super(key: key);

  @override
  State<AddMember> createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _startContractController = TextEditingController();
  final TextEditingController _endContractController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late double modalHeight = MediaQuery.of(context).size.height * 0.6;


  @override
  void didChangeDependencies() { 
    super.didChangeDependencies();
    if (MediaQuery.of(context).viewInsets.bottom == 0) {
      setState(() {
        modalHeight = MediaQuery.of(context).size.height * 0.6;
      });
    } else {
      setState(() {
        modalHeight = MediaQuery.of(context).size.height * 0.9;
      });
    }
   }
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal :10, vertical: 20),
        height: modalHeight,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: Colors.white
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ajout membre d'équipe",
                  style: GoogleFonts.montserrat(
                    color: blue064F60,
                    fontSize: MediaQuery.of(context).size.width * 0.045,
                    fontWeight: FontWeight.w500
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close_rounded,
                    size: 30,
                  )
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                controller: _nameController,
                enableSuggestions: false,
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  label: const Text('Nom'),
                  labelStyle: GoogleFonts.montserrat(
                    color: blue064F60,
                    fontSize: 12,
                  ),
                  constraints: BoxConstraints.loose(Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height * 0.07))
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Champs requis';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                controller: _roleController,
                enableSuggestions: false,
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  label: const Text('Poste'),
                  labelStyle: GoogleFonts.montserrat(
                    color: blue064F60,
                    fontSize: 12,
                  ),
                  constraints: BoxConstraints.loose(Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height * 0.07))
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Champs requis';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                controller: _startContractController,
                enableSuggestions: false,
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  label: const Text('Date de début de contrat'),
                  hintText: 'AAAA-MM-JJ',
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 12,
                  ),
                  labelStyle: GoogleFonts.montserrat(
                    color: blue064F60,
                    fontSize: 12,
                  ),
                  constraints: BoxConstraints.loose(Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height * 0.07))
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Champs requis';
                  }
                  if (RegExp(r'\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])').stringMatch(value ?? '') == value!) {
                    return null;
                  } else {
                    return 'Champs mal formaté';
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                controller: _endContractController,
                enableSuggestions: false,
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  label: const Text('Date de fin de contrat'),
                  hintText: 'AAAA-MM-JJ',
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 12,
                  ),
                  labelStyle: GoogleFonts.montserrat(
                    color: blue064F60,
                    fontSize: 12,
                  ),
                  constraints: BoxConstraints.loose(Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height * 0.07))
                ),
                validator: (value) {
                  if(value?.isEmpty ?? true) {
                    return null;
                  }
                  if (RegExp(r'\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])').stringMatch(value ?? '') == value) {
                    return null;
                  } else {
                    return 'Champs mal formaté';
                  }  
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    BlocProvider.of<MemberBloc>(context).add(
                      MemberEvent.addMember(
                        Member(
                          name: _nameController.text,
                          role: _roleController.text,
                          startContract: DateTime.parse(_startContractController.text),
                          endContract: _endContractController.text.isEmpty
                            ? null
                            : DateTime.parse(_endContractController.text)
                        )
                      )
                    );
                    _nameController.clear();
                    _roleController.clear();
                    _startContractController.clear();
                    _endContractController.clear();
                    Navigator.pop(context);
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(yellowFFAD47),
                  fixedSize: MaterialStateProperty.all(Size(
                    MediaQuery.of(context).size.width * 0.5,
                    MediaQuery.of(context).size.height * 0.05
                  )
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ))
                ),
                child: Text(
                  'Ajouter',
                  style: GoogleFonts.montserrat(
                    color: whiteFAFAFA,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.w500
                  ),
                )
              ),
            )
          ],
        ),
      )
    );
  }
}