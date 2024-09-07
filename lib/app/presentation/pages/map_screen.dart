import 'package:fluterprojects/app/domain/usecases/get_trip_details_usecase.dart';
import 'package:fluterprojects/app/presentation/viewmodels/map_view_model.dart';
import 'package:fluterprojects/app/presentation/widgets/map_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Column(
        children: [
          const Expanded(child: MapWidget()),
          Expanded(
              child: Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'This is the bottom widget',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  )))
        ],
      ),
    );
  }
}
