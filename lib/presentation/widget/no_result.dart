


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/presentation/core/colors.dart';

class NoResult extends StatelessWidget {
  const NoResult({
    Key? key,
    required this.title  
  }) : super(key: key);
  final String title;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/no_results.png',
            filterQuality: FilterQuality.high,
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.width * 0.5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: blue064F60,
              fontSize: MediaQuery.of(context).size.width * 0.05,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          )
        ],
      ),
    );
  }
}