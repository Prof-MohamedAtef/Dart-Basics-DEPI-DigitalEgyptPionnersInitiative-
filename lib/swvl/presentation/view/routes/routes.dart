import 'package:fluterprojects/swvl/presentation/view/pages/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../app/presentation/pages/splash_screen.dart';

class AppRoute{
  static const splash = '/';
  static const home = '/Home';

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined with ${settings.name}'),
          ),
        ));
    }
  }
}