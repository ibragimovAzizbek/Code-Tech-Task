// To parse this JSON data, do
//
// final timeZoneModel = timeZoneModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'time_zone_model.freezed.dart';
part 'time_zone_model.g.dart';

TimeZoneModel timeZoneModelFromJson(String str) =>
    TimeZoneModel.fromJson(json.decode(str));

String timeZoneModelToJson(TimeZoneModel data) => json.encode(data.toJson());

@freezed
class TimeZoneModel with _$TimeZoneModel {
  const factory TimeZoneModel({
    DateTime? datetime,
    String? timezoneName,
    String? timezoneLocation,
    String? timezoneAbbreviation,
    int? gmtOffset,
    bool? isDst,
    String? requestedLocation,
    double? latitude,
    double? longitude,
  }) = _TimeZoneModel;

  factory TimeZoneModel.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneModelFromJson(json);
}
