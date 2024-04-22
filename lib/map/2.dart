import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map2 extends StatefulWidget {
  const Map2({Key? key}) : super(key: key);

  @override
  State<Map2> createState() => _Map2State();
}

class _Map2State extends State<Map2> {
  late GoogleMapController mapController;
  LatLng _currentLocation = LatLng(0, 0);

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  void _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      setState(() {
        _currentLocation = LatLng(position.latitude, position.longitude);
      });
    } catch (e) {
      print(e);
    }
  }

  void _onCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              onMapCreated: _onCreated,
              initialCameraPosition: CameraPosition(target: _currentLocation, zoom: 0),
            ),
            Positioned(
                top: 500,
                left: 125,
                child: Column(
              children: [
                Icon(Icons.location_on,
                  size: 40,
                  color: Colors.blue,
                ),
                SizedBox(height: 10),
                Text("$_currentLocation",style: TextStyle(fontSize: 20,color: Colors.black))
              ],
            ))
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(Map2());
}
