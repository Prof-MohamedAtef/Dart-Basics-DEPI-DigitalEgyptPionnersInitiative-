import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  final double fromLat;
  final double fromLong;
  final double toLat;
  final double toLong;

  const MapScreen({
    super.key,
    required this.fromLat,
    required this.fromLong,
    required this.toLat,
    required this.toLong,
  });

  @override
  State<StatefulWidget> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late Set<Marker> _markers;

  @override
  void initState() {
    super.initState();
    _markers = {
      Marker(
        markerId: const MarkerId('fromMarker'),
        position: LatLng(widget.fromLat, widget.fromLong),
        infoWindow: const InfoWindow(
          title: 'From Location',
          snippet: 'This is the starting point.',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      ),
      Marker(
        markerId: const MarkerId('toMarker'),
        position: LatLng(widget.toLat, widget.toLong),
        infoWindow: const InfoWindow(
          title: 'To Location',
          snippet: 'This is the destination point.',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      ),
    };
  }

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
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.fromLat , widget.fromLong),
          // Initial position (e.g., San Francisco)
          zoom: 13,
        ),
        markers: _markers,
        myLocationEnabled: true,
        // Add other properties as needed
      ),
    );
  }
}
