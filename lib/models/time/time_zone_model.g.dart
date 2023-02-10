// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_zone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeZoneModel _$$_TimeZoneModelFromJson(Map<String, dynamic> json) =>
    _$_TimeZoneModel(
      datetime: json['datetime'] == null
          ? null
          : DateTime.parse(json['datetime'] as String),
      timezoneName: json['timezoneName'] as String?,
      timezoneLocation: json['timezoneLocation'] as String?,
      timezoneAbbreviation: json['timezoneAbbreviation'] as String?,
      gmtOffset: json['gmtOffset'] as int?,
      isDst: json['isDst'] as bool?,
      requestedLocation: json['requestedLocation'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TimeZoneModelToJson(_$_TimeZoneModel instance) =>
    <String, dynamic>{
      'datetime': instance.datetime?.toIso8601String(),
      'timezoneName': instance.timezoneName,
      'timezoneLocation': instance.timezoneLocation,
      'timezoneAbbreviation': instance.timezoneAbbreviation,
      'gmtOffset': instance.gmtOffset,
      'isDst': instance.isDst,
      'requestedLocation': instance.requestedLocation,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
