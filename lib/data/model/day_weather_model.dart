import 'package:lichviet_modules/data/model/hour_weather_model.dart';
import 'package:lichviet_modules/domain/entities/day_weather_entity.dart';

class DayWeatherModel implements DayWeatherEntity {
  @override
  String atTheMoment;

  @override
  String dateTime;

  @override
  String description;

  @override
  String dewPoint;

  @override
  String heatIndex;

  @override
  List<HourWeatherModel> hourWeatherList;

  @override
  String humidity;

  @override
  String iconName;

  @override
  String maxTemp;

  @override
  String minTemp;

  @override
  String sunrise;

  @override
  String sunset;

  @override
  String windSpeed;

  DayWeatherModel({
    required this.atTheMoment,
    required this.dateTime,
    required this.description,
    required this.dewPoint,
    required this.heatIndex,
    required this.hourWeatherList,
    required this.humidity,
    required this.iconName,
    required this.maxTemp,
    required this.minTemp,
    required this.sunrise,
    required this.sunset,
    required this.windSpeed,
  });

  factory DayWeatherModel.fromJson(Map<String, dynamic> json) {
    final list = <HourWeatherModel>[];
    if (json['hourlyInfos'] != null) {
      for (var data in (json['hourlyInfos'] as List)) {
        list.add(HourWeatherModel.fromJson(data));
      }
    }
    return DayWeatherModel(
        atTheMoment: json['atTheMoment'],
        dateTime: json['dateTime'],
        description: json['description'],
        dewPoint: json['dewPoint'],
        heatIndex: json['heatIndex'],
        hourWeatherList: list,
        humidity: json['humidity'],
        iconName: json['iconName'],
        maxTemp: json['maxTemp'],
        minTemp: json['minTemp'],
        sunrise: json['sunrise'],
        sunset: json['sunset'],
        windSpeed: json['windSpeed']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['atTheMoment'] = atTheMoment;
    data['dateTime'] = dateTime;
    data['description'] = description;
    data['dewPoint'] = dewPoint;
    data['heatIndex'] = heatIndex;
    data['humidity'] = humidity;
    data['hourlyInfos'] =
        hourWeatherList.map((hourWeather) => hourWeather.toJson()).toList();
    data['iconName'] = iconName;
    data['maxTemp'] = maxTemp;
    data['minTemp'] = minTemp;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    data['windSpeed'] = windSpeed;
    return data;
  }
}
