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
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.connectTimeout:
          return "Connect Time Out.";

        case DioErrorType.receiveTimeout:
          return "Receive Time Out";

        case DioErrorType.sendTimeout:
          return "Send Time Out";

        case DioErrorType.other:
          return "Internet connection error";

        default:
          return "Unknown error in dio";
      }
    }
  }
}
