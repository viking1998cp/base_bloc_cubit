import 'package:flutter/material.dart';

class StarEntity {
  String title;
  List<StarHourData> datas;
  StarEntity({required this.datas, required this.title});
}

class StarHourData {
  String title;
  String type;

  StarHourData({required this.type, required this.title});
}
