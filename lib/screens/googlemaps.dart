import 'package:businer/provider/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class GoogleMaps extends StatefulWidget {
  static const String id = 'googlemap';
  @override
  _GoogleMapsState createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  LatLng currentLocation;
  GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    final locationData = Provider.of<LocationProvider>(context);
    setState(() {
      locationData.getCurrentPosition();
      currentLocation = LatLng(locationData.latitude, locationData.longitude);
    });

    void onCreated(GoogleMapController controller) {
      setState(() {
        _mapController = controller;
      });
    }
    
    

    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          GoogleMap(
            initialCameraPosition:
                CameraPosition(target: currentLocation, zoom: 11),
            zoomControlsEnabled: false,
            minMaxZoomPreference: MinMaxZoomPreference(1.5, 20.8),
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            mapType: MapType.normal,
            mapToolbarEnabled: true,
            onCameraMove: (CameraPosition position) {
              locationData.onCameraMove(position);
            },
            onMapCreated: onCreated,
            onCameraIdle: () {
              locationData.getMoveCamera();
            },
          ),
          Center(
              child: Container(
                  height: 30,
                  margin: EdgeInsets.only(bottom: 40),
                  child: Image.asset('assets/maps/source_pin.png'))),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    ));
  }
}
