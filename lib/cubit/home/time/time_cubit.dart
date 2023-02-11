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
        Logger().d("TIME: ${timeData!.get('time')}");
        emit(TimeSuccussfully());
        changeTime();
      } else {
        emit(TimeError(response));
      }
    });
  }

  changeTime() {
    Logger().d("TIME FIRST: ${timeData!.get('time')}");
    DateTime time = timeData!.get('time');
    Timer.periodic(
      const Duration(seconds: 60),
      (Timer t) => {
        timeData!.put(
          'time',
          DateTime(
            time.year,
            time.month,
            time.day,
            time.hour,
            time.minute + 1,
            time.second,
            time.millisecond,
          ),
        ),
        Logger().d("TIME SECOND: $time"),
        emit(TimeSuccussfully()),
      },
    );
  }
}
