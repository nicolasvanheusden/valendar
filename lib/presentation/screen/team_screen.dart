




import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/application/member/member_bloc.dart';
import 'package:valendar/presentation/core/colors.dart';
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
        title: Text(
          'Mon équipe',
          style: GoogleFonts.montserrat(
            color: blue064F60,
            fontSize: 30
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
                ? const NoResult()
                : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: state.members.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 80,
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
                                fontSize: 25
                              ), 
                            ),
                            Text(
                              'Date du Contrat : ${state.members.elementAt(index).startContract.toString().split(' ').first} - ${state.members.elementAt(index).endContract?.toString().split(' ').first ?? ''}',
                              style: GoogleFonts.montserrat(
                                fontSize: 16
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
        ],
      ),
    );    
  }
}