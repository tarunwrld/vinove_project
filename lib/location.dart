// import 'package:first_project/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: LocationScreen(),
//   ));
// }
//
// class LocationScreen extends StatefulWidget {
//   @override
//   _LocationScreenState createState() => _LocationScreenState();
// }
//
// class _LocationScreenState extends State<LocationScreen> {
//   static const googlePlex = LatLng(37.4233, -122.0848);
//   static const mountainView = LatLng(37.3861, -122.0839);
//
//   LatLng currentPosition = googlePlex;
//   Map<PolylineId, Polyline> polylines = {};
//
//   Future<void> initializeMap() async {
//     final coordinates = await fetchPolylinePoints();
//     generatePolyLineFromPoints(coordinates);
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     initializeMap();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('LOCATION'),
//         backgroundColor: Colors.purple,
//         actions: [
//           TextButton.icon(
//             onPressed: () {},
//             icon: Icon(Icons.people, color: Colors.white),
//             label: Text('Member', style: TextStyle(color: Colors.white)),
//           ),
//         ],
//       ),
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: googlePlex,
//           zoom: 13,
//         ),
//         markers: {
//           Marker(
//             markerId: MarkerId('sourceLocation'),
//             position: googlePlex,
//             icon: BitmapDescriptor.defaultMarker,
//           ),
//           Marker(
//             markerId: MarkerId('destLocation'),
//             position: mountainView,
//             icon: BitmapDescriptor.defaultMarker,
//           ),
//         },
//         polylines: Set<Polyline>.of(polylines.values), // Display the polyline
//       ),
//     );
//   }
//
//   // Fetch polyline points from the Google Maps API
//   Future<List<LatLng>> fetchPolylinePoints() async {
//     // final polylinePoints = PolylinePoints();
//     PolylinePoints polylinePoints = PolylinePoints();
//
//     PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
//       googleApiKey: google_api_key ,
//         request: PolylineRequest(
//           origin: PointLatLng(googlePlex.latitude, googlePlex.longitude),
//           destination: PointLatLng(mountainView.latitude, mountainView.longitude),
//           mode: TravelMode.driving,
//         ),
//     );
//
//     if (result.points.isNotEmpty) {
//       return result.points
//           .map((point) => LatLng(point.latitude, point.longitude))
//           .toList();
//     } else {
//       debugPrint(result.errorMessage);
//       return [];
//     }
//   }
//
//   // Generate polyline from fetched points and add it to the map
//   Future<void> generatePolyLineFromPoints(List<LatLng> polylineCoordinates) async {
//     const polylineId = PolylineId('polyline');
//
//     final polyline = Polyline(
//       polylineId: polylineId,
//       color: Colors.blueAccent,
//       points: polylineCoordinates,
//       width: 5,
//     );
//
//     setState(() {
//       polylines[polylineId] = polyline; // Store the polyline in the map
//     });
//   }
// }







// import 'package:first_project/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: LocationScreen(),
//   ));
// }
//
// class LocationScreen extends StatefulWidget {
//   @override
//   _LocationScreenState createState() => _LocationScreenState();
// }
//
// class _LocationScreenState extends State<LocationScreen> {
//   static const sourceLocation = LatLng(37.4233, -122.0848);
//   static const destination = LatLng(37.3861, -122.0839);
//
//   List<LatLng> polylineCoordinates = [];
//
//   void getPolyPoints() async {
//     PolylinePoints polylinePoints = PolylinePoints();
//
//     PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
//       googleApiKey: google_api_key ,
//         request: PolylineRequest(
//           origin: PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
//           destination: PointLatLng(destination.latitude, destination.longitude),
//           mode: TravelMode.driving,
//         ),
//     );
//     if (result.points.isNotEmpty) {
//       result.points.forEach((PointLatLng point) {
//         polylineCoordinates.add(LatLng(point.latitude, point.longitude));
//       });
//       setState(() {});
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState(); // Fixed the missing super.initState
//     getPolyPoints(); // Fetch the polyline points
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('LOCATION'),
//         backgroundColor: Colors.purple,
//         actions: [
//           TextButton.icon(
//             onPressed: () {},
//             icon: Icon(Icons.people, color: Colors.white),
//             label: Text('Member', style: TextStyle(color: Colors.white)),
//           ),
//         ],
//       ),
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: sourceLocation,
//           zoom: 13,
//         ),
//         polylines: {
//           Polyline(
//             polylineId: PolylineId("route"),
//             points: polylineCoordinates,
//             color: Colors.blue, // Set the polyline color
//             width: 5, // Set the polyline width
//           ),
//         },
//         markers: {
//           Marker(
//             markerId: MarkerId('sourceLocation'),
//             position: sourceLocation,
//             icon: BitmapDescriptor.defaultMarker,
//           ),
//           Marker(
//             markerId: MarkerId('destLocation'),
//             position: destination,
//             icon: BitmapDescriptor.defaultMarker,
//           ),
//         },
//       ),
//     );
//   }
// }










  // Fetch polyline points from the Google Maps API
  // Future<List<LatLng>> fetchPolylinePoints() async {
  //   // final polylinePoints = PolylinePoints();
  //   PolylinePoints polylinePoints = PolylinePoints();
  //
  //   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
  //     googleApiKey: google_api_key ,
  //     request: PolylineRequest(
  //       origin: PointLatLng(googlePlex.latitude, googlePlex.longitude),
  //       destination: PointLatLng(mountainView.latitude, mountainView.longitude),
  //       mode: TravelMode.driving,
  //     ),
  //   );
  //
  //   if (result.points.isNotEmpty) {
  //     return result.points
  //         .map((point) => LatLng(point.latitude, point.longitude))
  //         .toList();
  //   } else {
  //     debugPrint(result.errorMessage);
  //     return [];
  //   }
  // }

//   }
// }

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: LocationScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // Source location (Fixed location for now)
  static const sourceLocation = LatLng(37.4233, -122.0848);

  // Initial destination location (Changeable based on user interaction)
  LatLng currentDestination = LatLng(37.3861, -122.0839);

  late GoogleMapController _mapController;

  // List of locations with details such as address and time
  final List<Map<String, dynamic>> locations = [
    {
      "address": "2715 Ash Dr. San Jose, South Dakota 83475",
      "time": "Left at 08:30 AM",
      "latLng": LatLng(37.3861, -122.0839), // Coordinates for example
    },
    {
      "address": "1901 Thornridge Cir. Shiloh, Hawaii 81063",
      "time": "09:45 AM - 12:45 PM",
      "latLng": LatLng(37.3839, -122.0840), // Different coordinates for variety
    },
    {
      "address": "412 N College Ave, WA, US",
      "time": "02:15 PM - 02:30 PM",
      "latLng": LatLng(37.3800, -122.0850), // Another different location
    },
  ];

  // Method to update the destination on the map
  void _updateDestination(LatLng newDestination) {
    setState(() {
      currentDestination = newDestination;
      // Animate camera to the new destination with a zoom level of 14
      _mapController.animateCamera(
        CameraUpdate.newLatLngZoom(newDestination, 11),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Live Location'),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.white),
            onPressed: () {}, // Placeholder for user-related actions
          ),
        ],
      ),
      body: Stack(
        children: [
          // Google Map displaying source and current destination
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: sourceLocation,
              zoom: 12,
            ),
            onMapCreated: (controller) {
              _mapController = controller; // Store map controller reference
            },
            markers: {
              Marker(
                markerId: MarkerId('source'),
                position: sourceLocation,
                icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
              ),
              Marker(
                markerId: MarkerId('destination'),
                position: currentDestination,
                icon: BitmapDescriptor.defaultMarker,
              ),
            },
            circles: {
              Circle(
                circleId: CircleId('radius'),
                center: sourceLocation,
                radius: 500, // in meters
                fillColor: Colors.blue.withOpacity(0.1),
                strokeColor: Colors.blue,
                strokeWidth: 2,
              ),
            },
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: locations.length,
                itemBuilder: (context, index) {
                  final location = locations[index];
                  return GestureDetector(
                    onTap: () {
                      // Update the destination when a list item is tapped
                      _updateDestination(location['latLng']);
                    },
                    child: _buildLocationTile(location['address'], location['time']),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build the location tile UI
  Widget _buildLocationTile(String address, String time) {
    return ListTile(
      leading: Icon(Icons.location_on, color: Colors.purple),
      title: Text(
        address,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
      subtitle: Text(time),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}
