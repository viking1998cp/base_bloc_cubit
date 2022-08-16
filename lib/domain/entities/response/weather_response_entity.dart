import 'package:lichviet_modules/domain/entities/day_weather_entity.dart';

abstract class WeatherResponseEntity {
  String get country;
  String get dateTimeInt;
  bool get isCheckDelete;
  int get isLockServer;
  String get location;
  List<DayWeatherEntity> get dayWeatherList;
}