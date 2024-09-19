import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/my_pic.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Mohamed Atef',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              )),
          ListTile(
            leading: Icon(Icons.trip_origin),
            title: Text('Your Trips'),
            onTap: (){

            },
          )
        ],
      ),
    );
  }
}
