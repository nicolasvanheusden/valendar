import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/application/member/member_bloc.dart';
import 'package:valendar/presentation/core/colors.dart';
import 'package:valendar/presentation/member/add_member.dart';
import 'package:valendar/presentation/widget/no_result.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: whiteFAFAFA,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Mon équipe',
            style: GoogleFonts.montserrat(
              color: blue064F60,
              fontSize: MediaQuery.of(context).size.width * 0.08
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Stack(
        children: [
          BlocBuilder<MemberBloc, MemberState>(
            builder: (context, state) {
              return state.members.isEmpty 
                ? const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: NoResult(title: "Aucun membre dans l'équipe")),
                )
                : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: state.members.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: blue064F60
                        ),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${state.members.elementAt(index).name} : ${state.members.elementAt(index).role}',
                              style: GoogleFonts.montserrat(
                                fontSize: MediaQuery.of(context).size.height * 0.025
                              ), 
                            ),
                            Text(
                              'Date du Contrat : ${state.members.elementAt(index).startContract.toString().split(' ').first} - ${state.members.elementAt(index).endContract?.toString().split(' ').first ?? ''}',
                              style: GoogleFonts.montserrat(
                                fontSize: MediaQuery.of(context).size.height * 0.015
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                );
            }
          ),
          AlignPositioned(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.15,
                right: 10
              ),
              child: FloatingActionButton(
                elevation: 5,
                onPressed: () {
                  showModalBottomSheet(
                    isDismissible: true,
                    barrierColor: Colors.black.withOpacity(0.5),
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                      )
                    ),
                    builder: (context) {
                      return const AddMember();
                    },
                  );
                },
                backgroundColor: yellowFFAD47,
                child: const Icon(
                  Icons.add_rounded,
                  size: 40,
                ),
              ),
            ),
          )
        ],
      ),
    );    
  }
}