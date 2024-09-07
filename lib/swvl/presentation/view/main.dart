import 'package:fluterprojects/app/presentation/routes/routes.dart';
import 'package:fluterprojects/swvl/presentation/view/routes/routes.dart';
import 'package:flutter/material.dart';

void main(){
  // runApp(const MyApp());
}

/*
Stateless Widget
 */

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: AppRoute.splash,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }

}

