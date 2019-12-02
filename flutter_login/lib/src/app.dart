import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/src/common/common.dart';
import 'package:flutter_login/src/home/home_page.dart';
import 'package:flutter_login/src/login/login_page.dart';
import 'package:flutter_login/src/splash/splash_page.dart';
import 'package:flutter_login/src/user_repository.dart';

import 'authentication/authentication.dart';

class App extends StatelessWidget {
  final UserRepository userRepository;
  App({Key key, @required this.userRepository}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            if (state is AuthenticationUninitialized) return SplashPage();
            if (state is AuthenticationAuthenticated) return HomePage();
            if (state is AuthenticationUnauthenticated)
              return LoginPage(
                userRepository: userRepository,
              );
            if (state is AuthenticationLoading) return LoadingIndicator();
          },
        ));
  }
}
