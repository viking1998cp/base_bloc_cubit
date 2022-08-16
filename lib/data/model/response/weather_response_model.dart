import 'package:lichviet_modules/data/model/day_weather_model.dart';
import 'package:lichviet_modules/domain/entities/day_weather_entity.dart';
import 'package:lichviet_modules/domain/entities/response/weather_response_entity.dart';

class WeatherResponseModel implements WeatherResponseEntity {
  @override
  String country;

  @override
  String dateTimeInt;

  @override
  bool isCheckDelete;

  @override
  int isLockServer;

  @override
  String location;

  @override
  List<DayWeatherEntity> dayWeatherList;

  WeatherResponseModel({
    required this.country,
    required this.dateTimeInt,
    required this.isCheckDelete,
    required this.isLockServer,
    required this.location,
    required this.dayWeatherList,
  });

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) {
    final list = <DayWeatherModel>[];
    if (json['list'] != null) {
      for (var data in (json['list'] as List)) {
        list.add(DayWeatherModel.fromJson(data));
      }
    }
    return WeatherResponseModel(
        country: json['country'],
        dateTimeInt: json['dateTimeInt'],
        isCheckDelete: json['isCheckDelete'],
        isLockServer: json['isLockServer'],
        dayWeatherList: list,
        location: json['location']);
  }
}
