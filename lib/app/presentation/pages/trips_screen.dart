
import 'package:flutter/cupertino.dart';

import '../widgets/trip_cart.dart';

class TripsScreen extends StatelessWidget{
  const TripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TripCard(),
          SizedBox(height: 10,),
          TripCard()
        ],
      ),
    );
  }

}