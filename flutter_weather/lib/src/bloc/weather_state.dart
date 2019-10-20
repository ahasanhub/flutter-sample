import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_weather/src/models/weather.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();
}

class WeatherEmpty extends WeatherState {
  @override
  List<Object> get props => [];
}

class WeatherLoading extends WeatherState {
  @override
  List<Object> get props => [];
}

class WeatherLoaded extends WeatherState {
  final Weather weather;
  const WeatherLoaded({@required this.weather}) : assert(weather != null);
  @override
  List<Object> get props => [];
}

class WeatherError extends WeatherState {
  @override
  List<Object> get props => [];
}
