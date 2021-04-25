import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../main.dart';
import '../main.dart';

class GMapState extends StatefulWidget {
  static const String idScreen = "gmap";
  GMapState({Key key}) : super(key: key);

  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMapState> {
  Set<Marker> _markers = HashSet<Marker>();
  GoogleMapController _mapController;

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;

    setState(() {
      for(int i = 0; i < reports_list.length; i++) {
        ReportMarker new_marker = reports_list[i];
        _markers.add(Marker(
            markerId: MarkerId("$i"),
            position: LatLng(new_marker.longitude, new_marker.latitud),
            infoWindow: InfoWindow(
                title: new_marker.object, snippet: new_marker.product)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Map'),
        ),
        body: GoogleMap(

          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: LatLng(55.751999, 37.617734),
            zoom: 10,
          ),
          markers: _markers,
        ));
  }
}
