import 'dart:async';

import 'package:codetechtask/cubit/home/time/time_state.dart';
import 'package:codetechtask/main.dart';
import 'package:codetechtask/models/services/time_zone_service.dart';
import 'package:codetechtask/models/time/time_zone_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class TimeCubit extends Cubit<TimeState> {
  TimeZoneService timeZoneService;
  TimeCubit(this.timeZoneService) : super(TimeInitil());

  Future<void> fetchTime() async {
    await timeZoneService.getTimeZone().then((response) {
      if (response is Response) {
        timeData!.put('time', TimeZoneModel.fromJson(response.data).datetime!);
        emit(TimeSuccussfully());
        changeTime();
      } else {
        emit(TimeError(response));
      }
    });
  }

  // Future<void> fetchWeather() async {
  //   await WeatherService.getweatherService().then((response) {
  //     if (response is Response) {
  //       Logger().d(response.data);
  //       weather = WeatherModel.fromJson(response.data);
  //       emit(TimeSuccussfully());
  //     } else {
  //       emit(TimeError(response));
  //     }
  //   });
  // }

  changeTime() {
    Timer.periodic(
      const Duration(seconds: 60),
      (Timer t) => {
        timeData!.put(
          'time',
          DateTime(
            timeData!.get('time').year,
            timeData!.get('time').month,
            timeData!.get('time').day,
            timeData!.get('time').hour,
            timeData!.get('time').minute + 1,
            timeData!.get('time').second,
            timeData!.get('time').millisecond,
          ),
        ),
        Logger().d(timeData!.get('time')),
        emit(TimeSuccussfully()),
      },
    );
  }
}
