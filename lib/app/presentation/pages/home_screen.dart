import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/submit_button.dart';

class ListItemsScreen extends StatelessWidget {
  const ListItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        // leading: Icon(Icons.menu),
        leadingWidth: 100,
        leading: const Text("Home Page"),
        centerTitle: true,
        title: const Text("Home Page"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("phone click is done");
              },
              icon: Icon(Icons.phone))
        ],
      ),
      body: const SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Name"),
                  Text("Date of Birth"),
                  Text("Age"),
                  Text(
                    "Hello",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.red,
                        fontWeight: FontWeight.w500),
                  ),
                  SubmitButton(),
                  HorizontalListItems()
                ],
              ),
            ),
          )),
    );
  }
}