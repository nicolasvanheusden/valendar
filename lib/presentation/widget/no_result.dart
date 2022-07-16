


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
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/no_results.png',
          filterQuality: FilterQuality.high,
          width: MediaQuery.of(context).size.width * 0.6,
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          title,
          style: GoogleFonts.montserrat(
            color: blue064F60,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        )
      ],
    );
  }
}