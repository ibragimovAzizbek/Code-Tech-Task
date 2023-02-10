import 'package:dio/dio.dart';

class DioConfig {
  static final DioConfig _inherentce = DioConfig._init();

  static DioConfig get inherentce => _inherentce;

  DioConfig._init();

  Dio createRequest() {
    var dio = Dio(
      BaseOptions(
        // baseUrl: 'http://my2.dev.gov.uz/azamat/ru/weather',
        validateStatus: (int? statusCode) {
          if (statusCode != null && (statusCode >= 100 && statusCode <= 211)) {
            return true;
          } else {
            return false;
          }
        },
        receiveDataWhenStatusError: true,
      ),
    );

    //* Time Out Configuration

    dio.options.connectTimeout = 55 * 1000;

    dio.options.receiveTimeout = 55 * 1000;

    dio.options.sendTimeout = 55 * 1000;

    return dio;
  }
}
