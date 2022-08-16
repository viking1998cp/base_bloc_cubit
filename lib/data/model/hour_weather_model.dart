import 'package:lichviet_modules/domain/entities/hour_weather_entity.dart';

class HourWeatherModel implements HourWeatherEntity {
  @override
  String date;

  @override
  String description;

  @override
  String hour;

  @override
  String iconName;

  @override
  String temp;

  HourWeatherModel(
      {required this.date,
      required this.description,
      required this.hour,
      required this.iconName,
      required this.temp});
  factory HourWeatherModel.fromJson(Map<String, dynamic> json) =>
      HourWeatherModel(
          date: json['date'],
          description: json['description'],
          hour: json['hour'],
          iconName: json['iconName'],
          temp: json['temp']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['description'] = description;
    data['hour'] = hour;
    data['iconName'] = iconName;
    data['temp'] = temp;
    return data;
  }
}
