import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_weather_forecast/src/bloc/bloc.dart';
import 'package:flutter_weather_forecast/src/bloc/weather_bloc.dart';

import 'package:flutter_weather_forecast/src/widgets/city_input_field.dart';

import '../models/weather.dart';

class WeatherPage extends StatefulWidget {
  WeatherPage({Key key}) : super(key: key);

  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final weatherBloc = WeatherBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fake Weather App'),
        ),
        body: BlocProvider(
          builder: (context) => weatherBloc,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.center,
            child: BlocBuilder(
              bloc: weatherBloc,
              builder: (BuildContext context, WeatherState state) {
                // Changing the UI based on the current state
                if (state is WeatherInitial) {
                  return _buildInitialInput();
                } else if (state is WeatherLoading) {
                  return _buildLoading();
                } else if (state is WeatherLoaded) {
                  return _buildColumnWithData(state.weather);
                }
                return _buildLoading();
              },
            ),
          ),
        ));
  }

  Widget _buildInitialInput() {
    return Center(
      child: CityInputField(),
    );
  }

  Widget _buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Column _buildColumnWithData(Weather weather) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          weather.cityName,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          '${weather.tempreture.toStringAsFixed(1)} °C',
          style: TextStyle(fontSize: 80),
        ),
        CityInputField()
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    weatherBloc.dispose();
  }
}
