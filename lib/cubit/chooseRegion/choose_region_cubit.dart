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

  String? dropdownvalue;
  List<CityModel>? cityOfUzbekistan;

  Future<void> fetchRegion() async {
    emit(ChooseRegionLoading());
    await _regionService.getRegions().then((dynamic res) {
      if (res is Response) {
        List<RegionModel> data =
            (res.data as List).map((e) => RegionModel.fromJson(e)).toList();
        emit(ChooseRegionSuccessfuly(data));
      } else {
        emit(ChooseRegionError(res));
      }
    });
  }

  Future<void> fetchCity() async {
    emit(ChooseRegionLoading());
    await _cityService.getCitys(dropdownvalue!).then((dynamic res) {
      if (res is Response) {
        List<CityModel> data =
            (res.data as List).map((e) => CityModel.fromJson(e)).toList();
        emit(ChooseCitySuccessfuly(data));
      } else {
        emit(ChooseRegionError(res));
      }
    });
  }

  changeRegion(String value) {
    dropdownvalue = value;
  }
}
