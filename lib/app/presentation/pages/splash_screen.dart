import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFed4e4e),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/swvl.svg',
            height: 80,
            width: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: const Text(
              "Welcome To Swvl",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.yellow),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5 ), () {
      Navigator.pushNamed(context, AppRoutes.homeScreen);
    });
  }
}
