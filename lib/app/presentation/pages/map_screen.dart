import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen>{

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
      body: const GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(30.59965287125796, 32.29632067501643), // Initial position (e.g., San Francisco)
          zoom: 13,
        ),
        myLocationEnabled: true,
        // Add other properties as needed
      ),
    );
  }
}