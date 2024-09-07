
import 'package:fluterprojects/app/presentation/widgets/white_rounded_home_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCategorySelection extends StatelessWidget {
  const HomeCategorySelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HomeIconWithCircle(
            width: 60,
            height: 60,
            iconData: 'assets/images/police_car.svg',
            iconSize: 20,
            onTap: () {}),
        SizedBox(
          height: 5,
        ),
        Text(
          "Daily",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Ride in Cairo",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: Colors.grey[400]),
        ),
      ],
    );
  }
}
