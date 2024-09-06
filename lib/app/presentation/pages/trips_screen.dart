import 'package:fluterprojects/app/presentation/pages/map_screen.dart';
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MapScreen(
                            fromLat: 30.619306506190348,
                            fromLong: 32.29563290891867,
                            toLat: 30.607334926855913,
                            toLong: 32.28103991622421),),);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TripCard(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MapScreen(
                                fromLat: 30.619306506190348,
                                fromLong: 32.29563290891867,
                                toLat: 30.607334926855913,
                                toLong: 32.28103991622421),),);
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
