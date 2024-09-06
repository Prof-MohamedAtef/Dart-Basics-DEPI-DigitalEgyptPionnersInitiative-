import 'package:fluterprojects/app/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import '../widgets/trip_cart.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trips Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigates back to the previous screen
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TripCard(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.mapsScreen);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TripCard(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.mapsScreen);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
