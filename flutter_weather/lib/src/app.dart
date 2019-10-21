import 'package:flutter/material.dart';
import 'package:flutter_weather/src/repositories/weather_repository.dart';

class App extends StatelessWidget {
  final WeatherRepository weatherRepository;
  App({Key key, this.weatherRepository})
      : assert(weatherRepository != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
