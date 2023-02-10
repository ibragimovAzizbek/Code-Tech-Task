import 'package:codetechtask/core/config/dio_config.dart';
import 'package:codetechtask/core/constants/keys.dart';
import 'package:dio/dio.dart';

class RegionService {
  Future<dynamic> getRegions() async {
    try {
      Response response =
          await DioConfig.inherentce.createRequest().get(regionApi);
      if (response.statusCode == 200) {
        return response;
      }
    } catch (e) {
      return "Something wrong..";
    }
  }
}
