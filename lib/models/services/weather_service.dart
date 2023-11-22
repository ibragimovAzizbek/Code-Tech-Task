import 'package:codetechtask/core/config/dio_config.dart';
import 'package:codetechtask/core/constants/keys.dart';
import 'package:dio/dio.dart';

class WeatherService {
  static Future<dynamic> getweatherService(int index) async {
    try {
      print('#######START########');
      Response response =
          await DioConfig.inherentce.createRequest().get(weatherApi);
      if (response.statusCode == 200) {
        print('#######SUCCESSED########');
        print(response.data['hourly']['temperature_2m'][index]);
        return response.data['hourly']['temperature_2m'][index];
        
      }
    } on DioError catch (e) {
      print('#######ERRORR_____________########');
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
