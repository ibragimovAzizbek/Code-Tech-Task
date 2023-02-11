import 'package:codetechtask/models/city/city_model.dart';
import 'package:codetechtask/models/region/region_model.dart';

abstract class ChooseRegionState {}

class ChooseRegionInitial extends ChooseRegionState {}

class ChooseRegionLoading extends ChooseRegionState {}

class ChooseRegionSuccessfuly extends ChooseRegionState {
  List<RegionModel> regionData;
  List<CityModel>? cityData;
  ChooseRegionSuccessfuly(this.regionData, this.cityData);
}

class ChooseRegionError extends ChooseRegionState {
  String msg;
  ChooseRegionError(this.msg);
}
