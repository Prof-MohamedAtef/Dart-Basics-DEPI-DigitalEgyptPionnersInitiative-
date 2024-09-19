import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/sign_up_screen.dart';

class AppRoutes{
  static const signUpScreen = '/SignIUp';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch(settings.name){
      case signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}