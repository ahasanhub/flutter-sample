import 'package:equatable/equatable.dart';
import 'package:flutter_weather_forecast/src/models/weather.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WeatherState extends Equatable {
  const WeatherState();
}

class WeatherInitial extends WeatherState {
  @override
  List<Object> get props => [];
}

class WeatherLoading extends WeatherState {
  @override
  List<Object> get props => [];
}

class WeatherLoaded extends WeatherState {
  final Weather weather;
  WeatherLoaded({this.weather});
  @override
  List<Object> get props => [weather];
}
