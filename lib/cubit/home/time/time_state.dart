import 'package:codetechtask/models/time/time_zone_model.dart';

abstract class TimeState {}

class TimeInitil extends TimeState {}

class TimeSuccussfully extends TimeState {
  TimeSuccussfully();
}

class TimeError extends TimeState {
  String msg;
  TimeError(this.msg);
}
