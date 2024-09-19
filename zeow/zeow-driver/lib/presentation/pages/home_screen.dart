import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/greetings_widget.dart';
import '../widgets/white_rounded_icon.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Builder(builder: (ctx) {
            return IconWithCircle(
                iconData: Icons.menu,
                iconSize: 25,
                onTap: () {
                  Scaffold.of(ctx).openDrawer();
                });
          }),
        ),
        title: const GreetingsWidget(name: "Mohamed"),
      ),
      drawer: DrawerWidget(),
    );
  }

}

