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
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListItems(),
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
class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        // leading: Icon(Icons.menu),
        leadingWidth: 100,
        leading: Text("Home Page"),
        centerTitle: true,
        title: Text("Home Page"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("phone click is done");
              },
              icon: Icon(Icons.phone))
        ],
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Name"),
          const Text("Date of Birth"),
          const Text("Age"),
          const Text(
            "Hello",
            style: TextStyle(
                fontSize: 28, color: Colors.red, fontWeight: FontWeight.w500),
          ),
          IconButton(onPressed: (){
            print("submit");
          }, icon: Icon(Icons.add)),
          // const HorizontalListItems()
        ],
      )),
    );
  }
}

/*
horizontal list
 */

class HorizontalListItems extends StatelessWidget {
  const HorizontalListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Row(
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
