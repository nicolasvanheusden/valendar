




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
                  itemCount: state.members.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Text(state.members.elementAt(index).name),
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