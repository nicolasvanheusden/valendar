import 'package:flutter/material.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

// Text(
//               'Semaine du ${_currentWeek.daysNumber.first}/${_currentWeek.monthNumber} au ${_currentWeek.daysNumber.last}/${_currentWeek.nextMonthNumber ?? _currentWeek.monthNumber}',
//               style: GoogleFonts.montserrat(
//                 color: Colors.black,
//                 fontSize: 18,
//               )
//             ), 


class _AnalyticsScreenState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}