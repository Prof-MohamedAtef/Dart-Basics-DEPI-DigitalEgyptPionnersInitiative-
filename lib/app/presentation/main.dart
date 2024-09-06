// import 'package:flutter/cupertino.dart';
//
// void main(){
//
// }
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//
// }

import 'package:fluterprojects/app/presentation/routes/routes.dart';
import 'package:fluterprojects/app/presentation/widgets/submit_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: AppRoutes.home, // Set the home screen as the initial route
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: SafeArea(
//           child: Text(
//         "Hello",
//         style: TextStyle(
//             fontSize: 28, color: Colors.red, fontWeight: FontWeight.w500),
//       )),
//     );
//   }
// }

/*
horizontal list
 */

class HorizontalListItems extends StatelessWidget {
  const HorizontalListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("Name"),
        Text("Date of Birth"),
        Text("Age"),
        Text(
          "Hello",
          style: TextStyle(
              fontSize: 28, color: Colors.red, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
