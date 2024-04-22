import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main()
{
  runApp(ggg());
}
class ggg extends StatelessWidget {
  const ggg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: gggggg(),
    );
  }
}
class gggggg extends StatefulWidget {
  const gggggg({super.key});

  @override
  State<gggggg> createState() => _ggggggState();
}

class _ggggggState extends State<gggggg> {
  
  late GoogleMapController mapController;
  
  final LatLng _enter = const LatLng(9.931233, 76.267303);

   void _oncreated(GoogleMapController controller){
     mapController=controller;
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GoogleMap(
        onMapCreated: _oncreated,
          initialCameraPosition: CameraPosition(
        target: _enter,
            zoom: 17
      )) ,
    );
  }
}
