// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      generationtimeMs: (json['generationtimeMs'] as num?)?.toDouble(),
      utcOffsetSeconds: (json['utcOffsetSeconds'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      timezoneAbbreviation: json['timezoneAbbreviation'] as String?,
      elevation: json['elevation'] as int?,
      hourlyUnits: json['hourlyUnits'] == null
          ? null
          : HourlyUnits.fromJson(json['hourlyUnits'] as Map<String, dynamic>),
      hourly: json['hourly'] == null
          ? null
          : Hourly.fromJson(json['hourly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtimeMs': instance.generationtimeMs,
      'utcOffsetSeconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezoneAbbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'hourlyUnits': instance.hourlyUnits,
      'hourly': instance.hourly,
    };

_$_Hourly _$$_HourlyFromJson(Map<String, dynamic> json) => _$_Hourly(
      time: (json['time'] as List<dynamic>?)?.map((e) => e as String).toList(),
      temperature2M: (json['temperature2M'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_HourlyToJson(_$_Hourly instance) => <String, dynamic>{
      'time': instance.time,
      'temperature2M': instance.temperature2M,
    };

_$_HourlyUnits _$$_HourlyUnitsFromJson(Map<String, dynamic> json) =>
    _$_HourlyUnits(
      time: json['time'] as String?,
      temperature2M: json['temperature2M'] as String?,
    );

Map<String, dynamic> _$$_HourlyUnitsToJson(_$_HourlyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature2M': instance.temperature2M,
    };
