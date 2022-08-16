import 'package:lichviet_modules/domain/entities/hour_weather_entity.dart';

abstract class DayWeatherEntity {
  String get atTheMoment;
  String get dateTime;
  String get description;
  String get dewPoint;
  String get heatIndex;
  String get humidity;
  String get iconName;
  String get maxTemp;
  String get minTemp;
  String get sunrise;
  String get sunset;
  String get windSpeed;
  List<HourWeatherEntity> get hourWeatherList;
}