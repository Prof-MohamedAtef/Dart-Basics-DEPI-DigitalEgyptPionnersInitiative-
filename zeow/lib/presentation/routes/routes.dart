import 'package:flutter/material.dart';
import 'package:zeow/presentation/pages/onboading_page.dart';
import 'package:zeow/presentation/pages/sign_up_page.dart';
import 'package:zeow/presentation/pages/signin_page.dart';

import '../pages/home_page.dart';
import '../pages/splash_page.dart';
import '../pages/trips_list_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const signInScreen = '/SignIn';
  static const signUpScreen = '/SignIUp';
  static const onBoardingScreen = '/OnBoarding';
  static const homeScreen = '/Home';
  static const tripsScreen = '/Trips';
  static const mapsScreen = '/Map';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signInScreen:
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      case tripsScreen:
      return MaterialPageRoute(builder: (_) => TripsListScreen());
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      // case mapsScreen:
      //   return MaterialPageRoute(builder: (_) => const MapScreen());
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
