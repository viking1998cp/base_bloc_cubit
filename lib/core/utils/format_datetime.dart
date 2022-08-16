import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeCommon {
  static String formatDateDefault = "dd/MM/yyyy";
  static String formatTime(BuildContext context, DateTime date) {
    try {
      DateFormat dateFormat;
      if (MediaQuery.of(context).alwaysUse24HourFormat) {
        dateFormat =
            DateFormat.Hm(Localizations.localeOf(context).languageCode);
      } else {
        dateFormat =
            DateFormat.jm(Localizations.localeOf(context).languageCode);
      }
      return dateFormat.format(date);
    } catch (error) {
      // Logger.e("Error with time format: $error", e: error, s: StackTrace.current);
      return "";
    }
  }

  static String formatDateNoContext(DateTime date) {
    try {
      const datePattern = "d-M-yyyy";
      final dateFormat = DateFormat(datePattern);
      String day = dateFormat.format(date);

      return day;
    } catch (error) {
      // Logger.e("Error with date format: $error", e: error, s: StackTrace.current);
      return "";
    }
  }

  static DateTime formatStringToDate5(String date) {
    return DateFormat('d-M-yyyy').parse(date);
  }

  static String dateTimeToString(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }

  static String dateTimeToString8(DateTime dateTime) {
    return DateFormat('HH:mm').format(dateTime);
  }

  static String dateTimeToString5(DateTime dateTime) {
    return DateFormat('yyyy-MM-ddTHH:mm').format(dateTime);
  }

  static String dateTimeToString6(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }

  static String dateTimeToString7(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd HH:mm').format(dateTime);
  }

  static String dateTimeToString2(DateTime dateTime) {
    return DateFormat('yyyy/MM/dd').format(dateTime);
  }

  static String dateTimeToStringCustom(DateTime dateTime, String? format) {
    return DateFormat(format ?? 'yyyy/MM/dd').format(dateTime);
  }

  static String dateTimeToString3(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }

  static String dateTimeToString2NodayJapan(DateTime dateTime) {
    return DateFormat('yyyy年MM月dd').format(dateTime);
  }

  static String dateTimeToString2Noday(DateTime dateTime) {
    return DateFormat('yyyy-MM').format(dateTime);
  }

  static String dateTimeToString4(DateTime dateTime) {
    return DateFormat('yyyy/MM').format(dateTime);
  }

  static String dateTimeToString9(DateTime dateTime) {
    return DateFormat('yyyy').format(dateTime);
  }

  static String formatDateTime2(DateTime date) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(date);
  }

  static String formatDateTimeNoDay(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  static DateTime formatStringToDate2(String date) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').parse(date);
  }

  static DateTime formatStringToDate4(String date) {
    return DateFormat('HH:mm,dd/MM/yyyy').parse(date);
  }

  static DateTime formatStringToDate6(String date) {
    return DateFormat('yyyy dd/MM').parse(date);
  }

  static DateTime formatStringToDate7(String date) {
    return DateFormat('yyyy-MM-dd HH:mm').parse(date);
  }

  static DateTime formatStringToDate8(String date) {
    return DateFormat('dd/MM/yyyy').parse(date);
  }

  static String formatDateTime3(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  static String formatDateTime5(DateTime date) {
    return DateFormat('yyyy/MM/dd HH:mm').format(date);
  }

  static String formatDateTime4(DateTime date) {
    return DateFormat('yyyy-MM-dd HH:mm:ss.SSSSSS').format(date);
  }

  static String formatDateToHour(DateTime date) {
    return DateFormat('HH:mm').format(date);
  }

  static String formatDateToNameImage(DateTime date) {
    return DateFormat('yyyyMMddHHmmss').format(date);
  }

  static String formatDateJapan(DateTime date) {
    String? dayName;
    switch (date.weekday) {
      case 1:
        dayName = "Thứ 2";
        break;
      case 2:
        dayName = "Thứ 3";
        break;
      case 3:
        dayName = "Thứ 4";
        break;
      case 4:
        dayName = "Thứ 5";
        break;
      case 5:
        dayName = "Thứ 6";
        break;
      case 6:
        dayName = "Thứ 7";
        break;
      case 7:
        dayName = "Chủ nhật";
        break;
    }

    return ((DateFormat('yyyy-MM-dd').format(date)) + "（$dayName）");
  }

  static String formatDateJapan2(DateTime date) {
    return ((DateFormat('MM/dd').format(date)));
  }

  static String formatDateJapan2NoDay(DateTime date) {
    return ((DateFormat('yyyy年MM月').format(date)));
  }

  static DateTime convertStringJapanToDateNoDay(String dateString) {
    DateFormat df2 =
        DateFormat('yyyy年MM月'); // dd-MM-yyyy HH:mm:ss =  2020-06-24 09:50:44
    var date;
    try {
      date = df2.parse(dateString); //  dateString = "dd-MM-yyyy HH:mm:ss";
      /*formatteddate = df.format(date);*/
    } catch (_ex) {
      debugPrint(_ex.toString());
    }
    return date;
  }

  static DateTime convertStringJapanToDate(String dateString) {
    DateFormat df2 =
        DateFormat('yyyy-MM-dd'); // dd-MM-yyyy HH:mm:ss =  2020-06-24 09:50:44
    var date;
    try {
      date = df2.parse(dateString); //  dateString = "dd-MM-yyyy HH:mm:ss";
      /*formatteddate = df.format(date);*/
    } catch (_ex) {
      debugPrint(_ex.toString());
    }
    return date;
  }

  static DateTime convertStringToDate4(String dateString) {
    DateFormat df2 = DateFormat(
        'yyyy-MM-dd HH:mm:ss'); // dd-MM-yyyy HH:mm:ss =  2020-06-24 09:50:44
    var date;
    try {
      date = df2.parse(dateString); //  dateString = "dd-MM-yyyy HH:mm:ss";
      /*formatteddate = df.format(date);*/
    } catch (_ex) {
      debugPrint(_ex.toString());
    }
    return date;
  }

  static DateTime convertStringToDate5(String dateString) {
    DateFormat df2 =
        DateFormat('yyyy/MM/dd'); // dd-MM-yyyy HH:mm:ss =  2020-06-24 09:50:44
    var date;
    try {
      date = df2.parse(dateString); //  dateString = "dd-MM-yyyy HH:mm:ss";
      /*formatteddate = df.format(date);*/
    } catch (_ex) {
      debugPrint(_ex.toString());
    }
    return date;
  }

  static DateTime convertDateToStringCustom(String dateString, String? format) {
    DateFormat df2 = DateFormat(
        format ?? 'yyyy/MM/dd'); // dd-MM-yyyy HH:mm:ss =  2020-06-24 09:50:44
    var date;
    try {
      date = df2.parse(dateString); //  dateString = "dd-MM-yyyy HH:mm:ss";
      /*formatteddate = df.format(date);*/
    } catch (_ex) {
      debugPrint(_ex.toString());
    }
    return date;
  }

  static DateTime convertDateToString6(String dateString) {
    DateFormat df2 =
        DateFormat('yyyy/MM'); // dd-MM-yyyy HH:mm:ss =  2020-06-24 09:50:44
    var date;
    try {
      date = df2.parse(dateString); //  dateString = "dd-MM-yyyy HH:mm:ss";
      /*formatteddate = df.format(date);*/
    } catch (_ex) {
      debugPrint(_ex.toString());
    }
    return date;
  }

  static DateTime convertDateToString7(String dateString) {
    DateFormat df2 = DateFormat('yyyy-MM-dd');
    var date;
    try {
      date = df2.parse(dateString);
      /*formatteddate = df.format(date);*/
    } catch (_ex) {
      debugPrint(_ex.toString());
    }
    return date;
  }

  static DateTime fromTimeStamp(int timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  static DateTime fromTimeStampNoHour(int timestamp) {
    return DateTimeCommon.formatStringToDate8(DateTimeCommon.dateTimeToString(
        DateTime.fromMillisecondsSinceEpoch(timestamp)));
  }

  static String fromTimeStampToString(int? timestamp) {
    if (timestamp != null) {
      return dateTimeToString(fromTimeStamp(timestamp * 1000));
    }
    return "";
  }

  static String fromTimeHourToString(int? timestamp) {
    if (timestamp != null) {
      return dateTimeToString8(fromTimeStamp(timestamp * 1000));
    }
    return "";
  }
}
