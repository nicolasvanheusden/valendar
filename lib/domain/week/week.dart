import 'package:freezed_annotation/freezed_annotation.dart';

part 'week.freezed.dart';

@freezed
class Week with _$Week {
  Week._();

  static final _CalendarNames _calendarNames = _CalendarNames(
    monday: 'Lundi',
    tuesday: 'Mardi',
    wednesday: 'Mercredi',
    thursday: 'Jeudi',
    friday: 'Vendredi',
    saturday: 'Samedi',
    sunday: 'Dimanche',
    january: 'Janvier',
    february: 'Février',
    march: 'Mars',
    april: 'Avril',
    may: 'Mai',
    june: 'Juin', 
    july: 'Juillet', 
    august: 'Août',
    september: 'Septembre',
    october: 'Octobre',
    november: 'Novembre',
    december: 'Decembre'
  );

  static final List<String> monthNames = [
    _calendarNames.january,
    _calendarNames.february,
    _calendarNames.march,
    _calendarNames.april,
    _calendarNames.may,
    _calendarNames.june,
    _calendarNames.july,
    _calendarNames.august,
    _calendarNames.september,
    _calendarNames.october,
    _calendarNames.november,
    _calendarNames.december
  ];

  factory Week({
    required final List<DateTime> days,
    required final List<String> dayNames,
    required final List<int> daysNumber,
    required final String monthName,
    required final int monthNumber,
    required final int year,
    final String? nextMonthName,
    final int? nextMonthNumber,
    final int? nextYear,
  }) = _Week;

  factory Week.initialize(DateTime now) => _Week(
    days: List.generate(7,
    (index) => now.weekday > DateTime.monday + index 
      ? now.subtract(Duration(days: now.weekday - DateTime.monday - index))
      : now.add(Duration(days: (now.weekday - DateTime.monday - index).abs()))
    ),
    dayNames: [
      _calendarNames.monday, 
      _calendarNames.tuesday,
      _calendarNames.wednesday,
      _calendarNames.thursday,
      _calendarNames.friday,
      _calendarNames.saturday,
      _calendarNames.sunday
    ],
    daysNumber: List.generate(7,
    (index) => now.weekday > DateTime.monday + index 
      ? now.subtract(Duration(days: now.weekday - DateTime.monday - index)).day
      : now.add(Duration(days: (now.weekday - DateTime.monday - index).abs())).day
    ), 
    monthName: monthNames.elementAt(now.month-1),
    monthNumber: now.month,
    year: now.year,
  );

  _Week initializeNullableFields() {
    final daysNumberSorted = daysNumber.sublist(0); // copy
    daysNumberSorted.sort();    

    final tmpNextMonthNumber = daysNumberSorted.whereIndexed((index, element) => daysNumber.elementAt(index) != element).isNotEmpty
      ? (monthNumber+1) % 12 
      : monthNumber;  
    
    return _Week(
      days: days,
      dayNames: dayNames,
      daysNumber: daysNumber,
      monthName: monthName,
      monthNumber: monthNumber,
      year: year,
      nextMonthNumber: tmpNextMonthNumber,
      nextYear: tmpNextMonthNumber < monthNumber ? year+1 : year,
      nextMonthName: tmpNextMonthNumber != monthNumber ? monthNames.elementAt(tmpNextMonthNumber-1) : monthName
    );
  }


  Week nextWeek() {
    return Week.initialize(days.first.add(const Duration(days: 7))).initializeNullableFields();
  }


  Week previousWeek() {
    return Week.initialize(days.first.subtract(const Duration(days: 7))).initializeNullableFields();
  }
  

}

class _CalendarNames {

  _CalendarNames({
    required this.monday,
    required this.tuesday,
    required this.wednesday,
    required this.thursday,
    required this.friday,
    required this.saturday,
    required this.sunday,
    required this.january,
    required this.february,
    required this.march,
    required this.april,
    required this.may,
    required this.june,
    required this.july,
    required this.august,
    required this.september,
    required this.october,
    required this.november,
    required this.december,
  });

  final String monday;
  final String tuesday;
  final String wednesday;
  final String thursday;
  final String friday;
  final String saturday;
  final String sunday;

  final String january;
  final String february;
  final String march;
  final String april;
  final String may;
  final String june;
  final String july;
  final String august;
  final String september;
  final String october;
  final String november;
  final String december;
  
}