class WeatherEntity {
  String cityName; //Tên thành phố
  String tempNow; //Nhiệt độ
  String humidity; //Độ ẩm
  String windSpeed; //tốc độ gió
  String infoTemp;
  List<WeatherFeature> weatherFeatures;
  String iconWeatherNow;
  WeatherEntity(
      {required this.cityName,
      required this.humidity,
      required this.infoTemp,
      required this.tempNow,
      required this.windSpeed,
      required this.weatherFeatures,
      required this.iconWeatherNow});
}

class WeatherFeature {
  String time;
  String temp;
  String icon;
  WeatherFeature({required this.icon, required this.temp, required this.time});
}