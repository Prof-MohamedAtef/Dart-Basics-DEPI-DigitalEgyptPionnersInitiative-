import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripVerticalLineWidget extends StatelessWidget {
  const TripVerticalLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 4, // Adjust width as needed
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Circle with width = 2, height = 2, color = blue
          Container(
            width: 4,
            height: 4,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(height: 3), // Spacing between items

          // Vertical line with width = 1, height = 10, color = grey
          Container(
            width: 1.5,
            height: 10,
            color: Colors.grey,
          ),
          const SizedBox(height: 3), // Spacing between items

          // Vertical line with width = 2, height = 30, color = grey
          Container(
            width: 4,
            height: 30,
            color: Colors.grey,
          ),
          const SizedBox(height: 3), // Spacing between items

          // Vertical line with width = 1, height = 10, color = grey
          Container(
            width: 1.5,
            height: 10,
            color: Colors.grey,
          ),
          const SizedBox(height: 3), // Spacing between items

          // Circle with width = 2, height = 2, color = red
          Container(
            width: 4,
            height: 4,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}