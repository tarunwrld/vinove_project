import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: LiveLocationScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class LiveLocationScreen extends StatefulWidget {
  @override
  _LiveLocationScreenState createState() => _LiveLocationScreenState();
}

class _LiveLocationScreenState extends State<LiveLocationScreen> {
  // Current location (for demonstration, using a fixed location)
  static const currentLocation = LatLng(37.3861, -122.0839);

  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Location'),
        backgroundColor: Colors.purple,
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: currentLocation,
          zoom: 14,
        ),
        onMapCreated: (controller) {
          _mapController = controller; // Store map controller reference
        },
        markers: {
          Marker(
            markerId: MarkerId('current_location'),
            position: currentLocation,
            icon: BitmapDescriptor.defaultMarker,
          ),
        },
      ),
    );
  }
}
