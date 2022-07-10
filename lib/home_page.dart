

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/domain/week.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final Week _currentWeek;
  late final List<String> _headers;

  @override
  void initState() {
    super.initState();
    _currentWeek = Week.initialize(DateTime.now()).initializeNullableFields();
    _headers = [
      'Noms',
      ..._currentWeek.dayNames,
      'Total'
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Semaine du ${_currentWeek.daysNumber.first}/${_currentWeek.monthNumber} au ${_currentWeek.daysNumber.last}/${_currentWeek.nextMonthNumber ?? _currentWeek.monthNumber}',
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 18,
              )
            ), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(_headers.length,
                (index) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  shadowColor: const Color(0xFFFAFAFA),
                  child: Container(
                    width: 30,
                    height: 50,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                                           
                    ),
                    child: Center(
                      child: Text(
                        index == 0 || index == _headers.length - 1
                        ? _headers.elementAt(index).substring(0,1)
                        : '${_headers.elementAt(index).substring(0, 1)}\n${_currentWeek.daysNumber.elementAt(index-1)}',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500 
                      )
                      ),
                    )
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}