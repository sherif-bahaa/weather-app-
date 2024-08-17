import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app1/models/weatherModel.dart';

class WeatherServices {
  final dio = Dio();

  Future<WeatherModel> getCurrentWeather({required String cityname}) async {
    try {
      Response response = await dio.get(
          'https://api.weatherapi.com/v1/forecast.json?key=05fc9df6c7da4846819125419241408&q=$cityname');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'oops ther is error ,try later';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops ther is error ,try later');
    }
  }
}
