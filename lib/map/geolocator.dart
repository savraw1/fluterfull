import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatefulWidget {
  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  String _locationMessage = '';

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
        _locationMessage =
        "Latitude: ${position.latitude}, Longitude: ${position.longitude}";
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on,
              size: 40,
                color: Colors.blue,
              ),
              SizedBox(height: 10),
              Text("$_locationMessage",style: TextStyle(fontSize: 20,color: Colors.black))
            ],
          ),
      ),
    );
  }
}

void main()
{
  runApp(LocationWidget());
}
