import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/AllScreens/homeScreen.dart';
import 'package:flutter_app/AllScreens/mainMap.dart';

class MainScreen extends StatefulWidget {
  static const String idScreen = "main";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, GMapState.idScreen, (route) => false);
                  },
                  icon: Icon(
                    Icons.map,
                    size: 40,
                  ),
                  label: Text(
                    "Карта",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                  width: 100,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, HomeScreen.idScreen, (route) => false);
                  },
                  icon: Icon(
                    Icons.note,
                    size: 40,
                  ),
                  label: Text(
                    "Заявка",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
