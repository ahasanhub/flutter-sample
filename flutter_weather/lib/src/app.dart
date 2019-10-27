import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/src/bloc/bloc.dart';
import 'package:flutter_weather/src/repositories/weather_repository.dart';

import 'widgets/weather.dart';

class App extends StatelessWidget {
  final WeatherRepository weatherRepository;
  App({Key key, this.weatherRepository})
      : assert(weatherRepository != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Weather',
      home: BlocProvider(
        builder: (context) => WeatherBloc(weatherRepository: weatherRepository),
        child: Weather(),
      ),
    );
  }
}
