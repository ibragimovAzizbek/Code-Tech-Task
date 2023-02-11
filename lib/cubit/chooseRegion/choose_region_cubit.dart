import 'package:codetechtask/cubit/chooseRegion/choose_region_state.dart';
import 'package:codetechtask/models/city/city_model.dart';
import 'package:codetechtask/models/region/region_model.dart';
import 'package:codetechtask/models/services/city_service.dart';
import 'package:codetechtask/models/services/region_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseRegionCubit extends Cubit<ChooseRegionState> {
  final RegionService _regionService;
  final CityService _cityService;
  ChooseRegionCubit(this._regionService, this._cityService)
      : super(ChooseRegionInitial()) {
    fetchRegion();
  }

  String? dropdownvalueRegion;
  String? dropdownvalueCity;
  List<CityModel>? cityOfUzbekistan;
  List<RegionModel>? regionOfUzbekistan;
  bool iHaveCity = false;

  //* Logic here

  Future<void> fetchRegion() async {
    emit(ChooseRegionLoading());
    await _regionService.getRegions().then((dynamic res) {
      if (res is Response) {
        regionOfUzbekistan =
            (res.data as List).map((e) => RegionModel.fromJson(e)).toList();
        emit(ChooseRegionSuccessfuly(regionOfUzbekistan!, cityOfUzbekistan));
      } else {
        emit(ChooseRegionError(res));
      }
    });
  }

  Future<void> fetchCity(String value) async {
    await _cityService.getCitys(value).then((dynamic res) {
      if (res is Response) {
        cityOfUzbekistan =
            (res.data as List).map((e) => CityModel.fromJson(e)).toList();
        emit(ChooseRegionSuccessfuly(regionOfUzbekistan!, cityOfUzbekistan));
      } else {
        emit(ChooseRegionError(res));
      }
    });
  }

  changeRegion(String value) {
    dropdownvalueRegion = value;
    fetchCity(value);
    dropdownvalueCity = null;
  }

  changeCity(String value) {
    dropdownvalueCity = value;
    emit(ChooseRegionSuccessfuly(regionOfUzbekistan!, cityOfUzbekistan));
  }
}
