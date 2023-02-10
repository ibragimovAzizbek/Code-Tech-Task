import 'package:codetechtask/core/config/dio_config.dart';
import 'package:codetechtask/core/constants/keys.dart';
import 'package:dio/dio.dart';

class TimeZoneService {
  Future<dynamic> getTimeZone() async {
    try {
      Response response = await DioConfig.inherentce
          .createRequest()
          .get("${timezone}Tashkent, Uzbekistan");
      if (response.statusCode == 200) {
        return response;
      }
    } catch (e) {
      return "Something wrong..";
    }
  }
}
