import 'package:flutter/material.dart';
import 'package:flutter_login/src/home/home_page.dart';
import 'package:flutter_login/src/login/login_page.dart';
import 'package:flutter_login/src/splash/splash_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LoginPage(),
    );
  }
}
