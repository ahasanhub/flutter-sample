import 'package:flutter/material.dart';
import 'dart:developer' as dev;

class Location extends StatelessWidget {
  final String location;
  const Location({Key key, @required this.location})
      : assert(location != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    dev.log(location, name: 'location name');
    return Text(
      'Dhaka',
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
