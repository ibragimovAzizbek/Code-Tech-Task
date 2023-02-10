// To parse this JSON data, do
//
//     final regionModel = regionModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'region_model.freezed.dart';
part 'region_model.g.dart';

List<RegionModel> regionModelFromJson(String str) => List<RegionModel>.from(
    json.decode(str).map((x) => RegionModel.fromJson(x)));

String regionModelToJson(List<RegionModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class RegionModel with _$RegionModel {
  const factory RegionModel({
    String? region,
    String? country,
  }) = _RegionModel;

  factory RegionModel.fromJson(Map<String, dynamic> json) =>
      _$RegionModelFromJson(json);
}
