import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:lichviet_modules/core/constants/icon_constants.dart';
import 'package:lichviet_modules/core/constants/image_constants.dart';
import 'package:lichviet_modules/core/generate_key.dart';

import 'package:lichviet_modules/domain/entities/day_entity.dart';

import 'package:lichviet_modules/domain/entities/weather_entity.dart';
import 'package:lichviet_modules/presentation/features/home/home_constants.dart';

Widget homeScreenBuilder(BuildContext context) => const HomeScreen(
      isHeHiepKy: true,
    );

class HomeScreen extends StatefulWidget {
  final bool isHeHiepKy;
  const HomeScreen({Key? key, required this.isHeHiepKy}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final week = HomeConstants.week;
  final image =
      HomeConstants.imageList[Random().nextInt(HomeConstants.imageList.length)];
  // final _homeCubit = GetIt.I<HomeCubit>();
  // final _weatherCubit = GetIt.I<WeatherCubit>();
  // final _zodiacCubit = GetIt.I<ZodiacCubit>();
  // final _newsPaperCubit = GetIt.I<NewsPaperCubit>();
  // final _videoCubit = GetIt.I<VideoCubit>();
  // final _funFactCubit = GetIt.I<FunFactCubit>();
  // final _initCubit = GetIt.I<InitCubit>();
  // final _detailDayCubit = GetIt.I<DetailDayCubit>();
  late DayEntity currentDate;

  @override
  void initState() {
    // _homeCubit.getDayDetailList('04-04-2022', '10-04-2022');
    // _weatherCubit.getWeather();
    // _zodiacCubit.getZodiacDetail();
    // _newsPaperCubit.getNewsPaperFromNative();
    // _videoCubit.getVideoListFromNative();
    // _funFactCubit.getFunFactFromNative();
    // _initCubit.getPublicAndPrivateKey(refresKey: false).then((value) {});
    super.initState();
  }

  WeatherEntity getWeather() {
    List<WeatherFeature> weathers = [];
    weathers.add(WeatherFeature(
        icon: IconConstants.icWeatherRain, time: "Hiện tại", temp: "29"));
    for (int i = 2; i < 10; i++) {
      weathers.add(WeatherFeature(
          icon: IconConstants.icWeatherRain, time: i.toString(), temp: "29"));
    }
    WeatherEntity weather = WeatherEntity(
        cityName: 'TP HỒ CHÍ MINH',
        humidity: '64%',
        infoTemp: 'Mây âm u',
        tempNow: '29°C',
        windSpeed: '5.367 m/s',
        iconWeatherNow: IconConstants.icWeatherSunny,
        weatherFeatures: weathers);
    return weather;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: SingleChildScrollView(
        child: Container(
            color: Colors.white,
            child: SizedBox(
              child: Text('Text'),
            )),
      ),
    );
  }
}
