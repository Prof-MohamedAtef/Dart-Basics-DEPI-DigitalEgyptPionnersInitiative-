import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:zeow_driver/presentation/viewmodel/auth/auth_viewmodel.dart';

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
      backgroundColor: const Color(0xFFed4e4e),
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
          const Center(
            child: Text(
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
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3)); // Wait for 3 seconds
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // bool isFirstTime = prefs.getBool('isFirstTime') ?? true;
    // // bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    // AuthViewModel authViewModel = Provider.of<AuthViewModel>(context);
    // String route = isFirstTime
    //     ? AppRoutes.onBoardingScreen
    //     : authViewModel.isLoggedIn
    //         ? AppRoutes.signInScreen
    //         : AppRoutes.homeScreen;

    Navigator.pushNamed(context, AppRoutes.locationScreen);
  }
}
