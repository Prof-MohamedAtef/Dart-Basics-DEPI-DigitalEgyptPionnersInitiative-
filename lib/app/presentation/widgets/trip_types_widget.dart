import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripTypesWidget extends StatelessWidget{
  const TripTypesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.green[50],
        // Background color
        borderRadius: BorderRadius.circular(15),
        // Rounded corners with radius 15
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // Shadow position
          ),
        ],
      ),
      child: Row(
        children: [
          const Text("Premium", style: TextStyle(fontSize: 14, color: Colors.green),),
          Text("*" , style: TextStyle(fontSize: 10, color: Colors.grey[300]),),
          const SizedBox(width: 10,),
          Text("Bus", style: TextStyle(fontSize: 10, color: Colors.grey[500]),),
          const SizedBox(width: 10,),
          Text("*" , style: TextStyle(fontSize: 10, color: Colors.grey[300]),),
          const SizedBox(width: 10,),
          Text("AC", style: TextStyle(fontSize: 10, color: Colors.grey[500]),),
        ],
      ),
    );
  }
}