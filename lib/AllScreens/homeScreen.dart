import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app/AllScreens/mainscreen.dart';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatelessWidget {
  static const String idScreen = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
        child: SizedBox(
        width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Text(
                'Форма отправки',
                style: TextStyle(fontSize: 50.0, fontStyle:FontStyle.italic),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.cyan,
                  border: OutlineInputBorder(),
                  labelText: 'Объект',
                  contentPadding: EdgeInsets.all(20.0),

                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Владелец',
                  contentPadding: EdgeInsets.all(20.0),

                ),
              ),
              SizedBox(
                height: 20.0,
                width: 100,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Причина инцидента',
                  contentPadding: EdgeInsets.all(20.0),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 100,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Продукт',
                  contentPadding: EdgeInsets.all(20.0),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 100,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Пострадавшие объекты',
                  contentPadding: EdgeInsets.all(20.0),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 100,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ведутся работы по устранению',
                  contentPadding: EdgeInsets.all(20.0),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 100,
              ),
              FloatingActionButton.extended(
                onPressed: () {},
                icon: Icon(
                  Icons.image,
                  size: 40,
                ),
                label: Text(
                  "Загрузить",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 100,
              ),
              FloatingActionButton.extended(
                onPressed: () {},
                icon: Icon(
                  Icons.add_a_photo,
                  size: 40,
                ),
                label: Text(
                  "Сделать фото",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 100,
              ),
              FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, MainScreen.idScreen, (route) => false);

                  },
                  icon: Icon(
                    Icons.send,
                    size: 40,
                  ),
                  label: Text(
                    "Отправить",
                    style: TextStyle(fontSize: 40.0),
                  )),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
