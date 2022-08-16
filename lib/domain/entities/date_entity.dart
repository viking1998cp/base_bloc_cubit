enum TypeDate { holiday, eventDay, noteDay, normalDay }

class DateEntity {
  final String dayOfWeek;
  final String fullDayOfWeek;
  final String positiveDay;
  final String negativeDay;
  final int month;
  final int year;
  final String hour;
  final String yearDetail;
  final String monthDetail;
  final String dayDetail;
  final String hourDetail;
  final TypeDate typeDate;
  final bool isSunday;
  final bool isToday;

  DateEntity({
    required this.fullDayOfWeek,
    required this.month,
    required this.year,
    required this.hour,
    required this.yearDetail,
    required this.monthDetail,
    required this.dayDetail,
    required this.hourDetail,
    required this.dayOfWeek,
    required this.positiveDay,
    required this.negativeDay,
    required this.typeDate,
    required this.isToday,
    required this.isSunday,
  });
}
