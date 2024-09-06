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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HorizontalListItems(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Text(
        "Hello",
        style: TextStyle(
            fontSize: 28, color: Colors.red, fontWeight: FontWeight.w500),
      )),
    );
  }
}

/*
list with column
 */
class ListItems extends StatelessWidget{
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Column(
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
      )),
    );
  }

}

/*
horizontal list
 */

class HorizontalListItems extends StatelessWidget{
  const HorizontalListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Row(children: [
        Text("Name"),
        Text("Date of Birth"),
        Text("Age"),
        Text(
          "Hello",
          style: TextStyle(
              fontSize: 28, color: Colors.red, fontWeight: FontWeight.w500),
        )
      ],)),
    );
  }

}