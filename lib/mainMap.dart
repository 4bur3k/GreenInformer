import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMap extends StatefulWidget{
  GMap({Key key}): super(key: key);

  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap>{
Set<Marker> _markers = HashSet<Marker>();
GoogleMapController _mapController;
void _onMapCreated (GoogleMapController controller){
_mapController = controller;

setState(() {
  _markers.add(Marker(
      markerId: MarkerId("0"),
          position: LatLng(55.751999, 37.617734),
    infoWindow: InfoWindow(
      title: "Moscow", snippet: "MOSKVA")
  )
  );
});
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body:  GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
        target: LatLng(55.751999, 37.617734),
        zoom: 10,
      ),
          markers: _markers,
      )
    );
  }
}