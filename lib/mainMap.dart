import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMap extends StatefulWidget{
  static const String idScreen = "map";
  GMap({Key key}): super(key: key);

  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Green map'),
      ),
      body: GoogleMap(initialCameraPosition: CameraPosition(
        target: LatLng(55.751999, 37.617734),
        zoom: 12,
      )
      )
    );
  }
}