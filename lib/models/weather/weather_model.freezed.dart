// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get generationtimeMs => throw _privateConstructorUsedError;
  double? get utcOffsetSeconds => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get timezoneAbbreviation => throw _privateConstructorUsedError;
  int? get elevation => throw _privateConstructorUsedError;
  HourlyUnits? get hourlyUnits => throw _privateConstructorUsedError;
  Hourly? get hourly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      double? generationtimeMs,
      double? utcOffsetSeconds,
      String? timezone,
      String? timezoneAbbreviation,
      int? elevation,
      HourlyUnits? hourlyUnits,
      Hourly? hourly});

  $HourlyUnitsCopyWith<$Res>? get hourlyUnits;
  $HourlyCopyWith<$Res>? get hourly;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? generationtimeMs = freezed,
    Object? utcOffsetSeconds = freezed,
    Object? timezone = freezed,
    Object? timezoneAbbreviation = freezed,
    Object? elevation = freezed,
    Object? hourlyUnits = freezed,
    Object? hourly = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      generationtimeMs: freezed == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double?,
      utcOffsetSeconds: freezed == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneAbbreviation: freezed == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as int?,
      hourlyUnits: freezed == hourlyUnits
          ? _value.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as HourlyUnits?,
      hourly: freezed == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyUnitsCopyWith<$Res>? get hourlyUnits {
    if (_value.hourlyUnits == null) {
      return null;
    }

    return $HourlyUnitsCopyWith<$Res>(_value.hourlyUnits!, (value) {
      return _then(_value.copyWith(hourlyUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyCopyWith<$Res>? get hourly {
    if (_value.hourly == null) {
      return null;
    }

    return $HourlyCopyWith<$Res>(_value.hourly!, (value) {
      return _then(_value.copyWith(hourly: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$_WeatherModelCopyWith(
          _$_WeatherModel value, $Res Function(_$_WeatherModel) then) =
      __$$_WeatherModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      double? generationtimeMs,
      double? utcOffsetSeconds,
      String? timezone,
      String? timezoneAbbreviation,
      int? elevation,
      HourlyUnits? hourlyUnits,
      Hourly? hourly});

  @override
  $HourlyUnitsCopyWith<$Res>? get hourlyUnits;
  @override
  $HourlyCopyWith<$Res>? get hourly;
}

/// @nodoc
class __$$_WeatherModelCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$_WeatherModel>
    implements _$$_WeatherModelCopyWith<$Res> {
  __$$_WeatherModelCopyWithImpl(
      _$_WeatherModel _value, $Res Function(_$_WeatherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? generationtimeMs = freezed,
    Object? utcOffsetSeconds = freezed,
    Object? timezone = freezed,
    Object? timezoneAbbreviation = freezed,
    Object? elevation = freezed,
    Object? hourlyUnits = freezed,
    Object? hourly = freezed,
  }) {
    return _then(_$_WeatherModel(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      generationtimeMs: freezed == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double?,
      utcOffsetSeconds: freezed == utcOffsetSeconds
          ? _value.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneAbbreviation: freezed == timezoneAbbreviation
          ? _value.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as int?,
      hourlyUnits: freezed == hourlyUnits
          ? _value.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as HourlyUnits?,
      hourly: freezed == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherModel implements _WeatherModel {
  const _$_WeatherModel(
      {this.latitude,
      this.longitude,
      this.generationtimeMs,
      this.utcOffsetSeconds,
      this.timezone,
      this.timezoneAbbreviation,
      this.elevation,
      this.hourlyUnits,
      this.hourly});

  factory _$_WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherModelFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? generationtimeMs;
  @override
  final double? utcOffsetSeconds;
  @override
  final String? timezone;
  @override
  final String? timezoneAbbreviation;
  @override
  final int? elevation;
  @override
  final HourlyUnits? hourlyUnits;
  @override
  final Hourly? hourly;

  @override
  String toString() {
    return 'WeatherModel(latitude: $latitude, longitude: $longitude, generationtimeMs: $generationtimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, hourlyUnits: $hourlyUnits, hourly: $hourly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherModel &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.generationtimeMs, generationtimeMs) ||
                other.generationtimeMs == generationtimeMs) &&
            (identical(other.utcOffsetSeconds, utcOffsetSeconds) ||
                other.utcOffsetSeconds == utcOffsetSeconds) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneAbbreviation, timezoneAbbreviation) ||
                other.timezoneAbbreviation == timezoneAbbreviation) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.hourlyUnits, hourlyUnits) ||
                other.hourlyUnits == hourlyUnits) &&
            (identical(other.hourly, hourly) || other.hourly == hourly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      generationtimeMs,
      utcOffsetSeconds,
      timezone,
      timezoneAbbreviation,
      elevation,
      hourlyUnits,
      hourly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      __$$_WeatherModelCopyWithImpl<_$_WeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherModelToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {final double? latitude,
      final double? longitude,
      final double? generationtimeMs,
      final double? utcOffsetSeconds,
      final String? timezone,
      final String? timezoneAbbreviation,
      final int? elevation,
      final HourlyUnits? hourlyUnits,
      final Hourly? hourly}) = _$_WeatherModel;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherModel.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  double? get generationtimeMs;
  @override
  double? get utcOffsetSeconds;
  @override
  String? get timezone;
  @override
  String? get timezoneAbbreviation;
  @override
  int? get elevation;
  @override
  HourlyUnits? get hourlyUnits;
  @override
  Hourly? get hourly;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Hourly _$HourlyFromJson(Map<String, dynamic> json) {
  return _Hourly.fromJson(json);
}

/// @nodoc
mixin _$Hourly {
  List<String>? get time => throw _privateConstructorUsedError;
  List<double>? get temperature2M => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyCopyWith<Hourly> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyCopyWith<$Res> {
  factory $HourlyCopyWith(Hourly value, $Res Function(Hourly) then) =
      _$HourlyCopyWithImpl<$Res, Hourly>;
  @useResult
  $Res call({List<String>? time, List<double>? temperature2M});
}

/// @nodoc
class _$HourlyCopyWithImpl<$Res, $Val extends Hourly>
    implements $HourlyCopyWith<$Res> {
  _$HourlyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature2M = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature2M: freezed == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HourlyCopyWith<$Res> implements $HourlyCopyWith<$Res> {
  factory _$$_HourlyCopyWith(_$_Hourly value, $Res Function(_$_Hourly) then) =
      __$$_HourlyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? time, List<double>? temperature2M});
}

/// @nodoc
class __$$_HourlyCopyWithImpl<$Res>
    extends _$HourlyCopyWithImpl<$Res, _$_Hourly>
    implements _$$_HourlyCopyWith<$Res> {
  __$$_HourlyCopyWithImpl(_$_Hourly _value, $Res Function(_$_Hourly) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature2M = freezed,
  }) {
    return _then(_$_Hourly(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature2M: freezed == temperature2M
          ? _value._temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hourly implements _Hourly {
  const _$_Hourly({final List<String>? time, final List<double>? temperature2M})
      : _time = time,
        _temperature2M = temperature2M;

  factory _$_Hourly.fromJson(Map<String, dynamic> json) =>
      _$$_HourlyFromJson(json);

  final List<String>? _time;
  @override
  List<String>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _temperature2M;
  @override
  List<double>? get temperature2M {
    final value = _temperature2M;
    if (value == null) return null;
    if (_temperature2M is EqualUnmodifiableListView) return _temperature2M;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Hourly(time: $time, temperature2M: $temperature2M)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hourly &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature2M, _temperature2M));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature2M));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HourlyCopyWith<_$_Hourly> get copyWith =>
      __$$_HourlyCopyWithImpl<_$_Hourly>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourlyToJson(
      this,
    );
  }
}

abstract class _Hourly implements Hourly {
  const factory _Hourly(
      {final List<String>? time,
      final List<double>? temperature2M}) = _$_Hourly;

  factory _Hourly.fromJson(Map<String, dynamic> json) = _$_Hourly.fromJson;

  @override
  List<String>? get time;
  @override
  List<double>? get temperature2M;
  @override
  @JsonKey(ignore: true)
  _$$_HourlyCopyWith<_$_Hourly> get copyWith =>
      throw _privateConstructorUsedError;
}

HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) {
  return _HourlyUnits.fromJson(json);
}

/// @nodoc
mixin _$HourlyUnits {
  String? get time => throw _privateConstructorUsedError;
  String? get temperature2M => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyUnitsCopyWith<HourlyUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyUnitsCopyWith<$Res> {
  factory $HourlyUnitsCopyWith(
          HourlyUnits value, $Res Function(HourlyUnits) then) =
      _$HourlyUnitsCopyWithImpl<$Res, HourlyUnits>;
  @useResult
  $Res call({String? time, String? temperature2M});
}

/// @nodoc
class _$HourlyUnitsCopyWithImpl<$Res, $Val extends HourlyUnits>
    implements $HourlyUnitsCopyWith<$Res> {
  _$HourlyUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature2M = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature2M: freezed == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HourlyUnitsCopyWith<$Res>
    implements $HourlyUnitsCopyWith<$Res> {
  factory _$$_HourlyUnitsCopyWith(
          _$_HourlyUnits value, $Res Function(_$_HourlyUnits) then) =
      __$$_HourlyUnitsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? time, String? temperature2M});
}

/// @nodoc
class __$$_HourlyUnitsCopyWithImpl<$Res>
    extends _$HourlyUnitsCopyWithImpl<$Res, _$_HourlyUnits>
    implements _$$_HourlyUnitsCopyWith<$Res> {
  __$$_HourlyUnitsCopyWithImpl(
      _$_HourlyUnits _value, $Res Function(_$_HourlyUnits) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature2M = freezed,
  }) {
    return _then(_$_HourlyUnits(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature2M: freezed == temperature2M
          ? _value.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HourlyUnits implements _HourlyUnits {
  const _$_HourlyUnits({this.time, this.temperature2M});

  factory _$_HourlyUnits.fromJson(Map<String, dynamic> json) =>
      _$$_HourlyUnitsFromJson(json);

  @override
  final String? time;
  @override
  final String? temperature2M;

  @override
  String toString() {
    return 'HourlyUnits(time: $time, temperature2M: $temperature2M)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HourlyUnits &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature2M, temperature2M) ||
                other.temperature2M == temperature2M));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, temperature2M);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HourlyUnitsCopyWith<_$_HourlyUnits> get copyWith =>
      __$$_HourlyUnitsCopyWithImpl<_$_HourlyUnits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourlyUnitsToJson(
      this,
    );
  }
}

abstract class _HourlyUnits implements HourlyUnits {
  const factory _HourlyUnits(
      {final String? time, final String? temperature2M}) = _$_HourlyUnits;

  factory _HourlyUnits.fromJson(Map<String, dynamic> json) =
      _$_HourlyUnits.fromJson;

  @override
  String? get time;
  @override
  String? get temperature2M;
  @override
  @JsonKey(ignore: true)
  _$$_HourlyUnitsCopyWith<_$_HourlyUnits> get copyWith =>
      throw _privateConstructorUsedError;
}
