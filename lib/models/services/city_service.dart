import 'package:codetechtask/core/config/dio_config.dart';
import 'package:dio/dio.dart';

class CityService {
  Future<dynamic> getCitys(String region) async {
    try {
      Response response =
          await DioConfig.inherentce.createRequest().get('http://battuta.medunes.net/api/city/uz/search/?region=$region&key=5530b6346b919fcb533612f42eafb7cf');
      if (response.statusCode == 200) {
        return response;
      }
    } catch (e) {
      return "Something wrong..";
    }
  }
}
