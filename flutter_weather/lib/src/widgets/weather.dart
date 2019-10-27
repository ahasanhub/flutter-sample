import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/src/bloc/bloc.dart';
import 'package:flutter_weather/src/widgets/widgets.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Weather'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              final city = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CitySelection()));
              if (city != null) {
                BlocProvider.of<WeatherBloc>(context)
                    .add(FetchWeather(city: city));
              }
            },
          )
        ],
      ),
      body: Center(
        child: BlocBuilder(
          builder: (context, state) {
            if (state is WeatherEmpty) {
              return Center(
                child: Text('Please select a location'),
              );
            }

            if (state is WeatherLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is WeatherLoaded) {
              //final weather = state.weather;
              return null;
            }

            if (state is WeatherError) {
              return Text(
                'Something went wrong!',
                style: TextStyle(color: Colors.red),
              );
            }
            //return null;
          },
        ),
      ),
    );
  }
}
