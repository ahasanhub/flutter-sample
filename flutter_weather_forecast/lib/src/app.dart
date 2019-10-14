import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/src/pages/weather_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: WeatherPage());
  }
}
