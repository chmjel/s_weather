import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    //http://api.weatherapi.com/v1/current.json?key=04fb93fa23a64813860191238222006&q=Katar&aqi=no
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=04fb93fa23a64813860191238222006&q=$city&aqi=no');

    return response.data;

  }
}
