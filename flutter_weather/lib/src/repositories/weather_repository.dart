import 'package:flutter_weather/src/models/weather.dart';
import 'package:flutter_weather/src/repositories/weather_api_client.dart';

class WeatherRepository {
  final WeatherApiClient weatherApiClient;
  WeatherRepository({this.weatherApiClient}) : assert(weatherApiClient != null);

  Future<Weather> getWeather(String city) async {
    final int locationId = await weatherApiClient.getLocationId(city);
    return await weatherApiClient.fetchWeather(locationId);
  }
}
