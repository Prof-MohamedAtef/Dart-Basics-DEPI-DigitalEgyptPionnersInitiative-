import 'package:fluterprojects/app/presentation/widgets/icon_text_row_widget.dart';
import 'package:fluterprojects/app/presentation/widgets/trip_types_widget.dart';
import 'package:fluterprojects/app/presentation/widgets/trip_vertical_line_widget.dart';
import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  final VoidCallback onTap;

  const TripCard({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(1.0), // Outer padding
        child: Container(
          padding: const EdgeInsets.all(12.0), // Inner padding
          decoration: BoxDecoration(
            color: Colors.white,
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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "11:34 am",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "12:17 pm",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TripVerticalLineWidget(),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconTextRow(icon: Icons.man_sharp, text: "22 min"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Abo Rawash Toll Station",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Zamzam Mall (Other Side) ..",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      IconTextRow(icon: Icons.man_sharp, text: "3 min"),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30), // Space between rows
              // Second Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.all(1.0), child: TripTypesWidget()),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      "39 EGP",
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
