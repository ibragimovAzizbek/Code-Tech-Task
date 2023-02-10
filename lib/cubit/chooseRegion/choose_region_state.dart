import 'package:codetechtask/models/city/city_model.dart';
import 'package:codetechtask/models/region/region_model.dart';

abstract class ChooseRegionState {}

class ChooseRegionInitial extends ChooseRegionState {}

class ChooseRegionLoading extends ChooseRegionState {}

class ChooseRegionSuccessfuly extends ChooseRegionState {
  List<RegionModel> regionData;
  ChooseRegionSuccessfuly(this.regionData);
}

class ChooseCitySuccessfuly extends ChooseRegionState {
  List<CityModel> cityData;
  ChooseCitySuccessfuly(this.cityData);
}

class ChooseRegionError extends ChooseRegionState {
  String msg;
  ChooseRegionError(this.msg);
}
