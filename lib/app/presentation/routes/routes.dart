import 'package:fluterprojects/app/presentation/pages/trips_screen.dart';
import 'package:flutter/material.dart';
import '../pages/home_screen.dart';

class AppRoutes {
  static const home = '/';
  static const tripsScreen = '/Trips';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const ListItemsScreen());
      case tripsScreen:
        return MaterialPageRoute(builder: (_) => const TripsScreen());
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