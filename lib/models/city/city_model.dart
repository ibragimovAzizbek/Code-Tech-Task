// To parse this JSON data, do
//
//     final cityModel = cityModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

List<CityModel> cityModelFromJson(String str) => List<CityModel>.from(json.decode(str).map((x) => CityModel.fromJson(x)));

String cityModelToJson(List<CityModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CityModel with _$CityModel {
    const factory CityModel({
        String? city,
        String? region,
        String? country,
        String? latitude,
        String? longitude,
    }) = _CityModel;

    factory CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);
}
