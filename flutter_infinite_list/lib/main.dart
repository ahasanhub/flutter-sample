import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/src/app.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_infinite_list/src/bloc/bloc.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(App());
}
