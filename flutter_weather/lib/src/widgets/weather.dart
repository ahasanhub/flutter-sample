import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/src/bloc/bloc.dart';
import 'package:flutter_weather/src/widgets/widgets.dart';
//import 'dart:developer' as dev;

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
              //dev.log(city);
              if (city != null) {
                BlocProvider.of<WeatherBloc>(context)
                    .add(FetchWeather(city: city));
              }
            },
          )
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Location(
                location: 'Dhaka',
              ),
            ),
            Center(
              child: null,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0),
              child: Center(
                child: null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
