

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valendar/domain/week/week.dart';
import 'package:valendar/presentation/core/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late final Week _currentWeek;
  late DateTime _selectedDate;
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
            fontWeight: FontWeight.w500
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
                      horizontal: 3),
                    child: Center(
                      child: Text(
                        '${_currentWeek.dayNames.elementAt(index).substring(0, 3)}\n${_currentWeek.daysNumber.elementAt(index)}',
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
            Expanded(
              child: ListView(
                children: const [
            
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Text(
//               'Semaine du ${_currentWeek.daysNumber.first}/${_currentWeek.monthNumber} au ${_currentWeek.daysNumber.last}/${_currentWeek.nextMonthNumber ?? _currentWeek.monthNumber}',
//               style: GoogleFonts.montserrat(
//                 color: Colors.black,
//                 fontSize: 18,
//               )
//             ), 