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
    august: 'Aout',
    september: 'Septembre',
    october: 'Octobre',
    november: 'Novembre',
    december: 'Decembre'
  );

  factory Week({
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
    monthName: [
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
    ].elementAt(now.month-1),
    monthNumber: now.month,
    year: now.year,
  );

  _Week initializeNullableFields() {

    final daysNumberSorted = daysNumber.sublist(0);
    daysNumberSorted.sort();
    final nextMonthNumber = daysNumberSorted != daysNumber 
      ? (monthNumber+1) % 12 
      : null;

    return _Week(
      dayNames: dayNames,
      daysNumber: daysNumber,
      monthName: monthName,
      monthNumber: monthNumber,
      year: year,
      nextMonthNumber: nextMonthNumber,
      nextYear: nextMonthNumber != monthNumber ? year+1 : null
    );
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