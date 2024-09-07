import 'package:fluterprojects/app/presentation/pages/map_screen.dart';
import 'package:fluterprojects/app/presentation/pages/splash_screen.dart';
import 'package:fluterprojects/app/presentation/pages/trips_screen.dart';
import 'package:flutter/material.dart';
import '../pages/home_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const homeScreen = '/Home';
  static const tripsScreen = '/Trips';
  static const mapsScreen = '/Map';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case tripsScreen:
        return MaterialPageRoute(builder: (_) => const TripsScreen());
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