import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app/AllScreens/mainscreen.dart';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';
import 'package:exif/exif.dart';

class HomeScreen extends StatelessWidget {
  static const String idScreen = "home";
  File _image;

  Future getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      Fluttertoast.showToast(msg: "Ура!");
      Map<String, IfdTag> data =
          await readExifFromBytes(File(pickedFile.path).readAsBytesSync());

      if (data == null || data.isEmpty) {
        print("No EXIF information found\n");
        return;
      }

      if (data.containsKey('JPEGThumbnail')) {
        print('File has JPEG thumbnail');
        data.remove('JPEGThumbnail');
      }
      if (data.containsKey('TIFFThumbnail')) {
        print('File has TIFF thumbnail');
        data.remove('TIFFThumbnail');
      }

      for (String key in data.keys) {
        print("$key (${data[key].tagType}): ${data[key]}");
      }
    } else {
      Fluttertoast.showToast(msg: "Плак!");
    }
/*
      this..setState(() {
        if (pickedFile != null) {
          _image = File(pickedFile.path);
        } else {
          print('Ничего не выбранно');
        }
      });

 */
  }

  Future takePicture() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      Fluttertoast.showToast(msg: "Ура!");
    } else {
      Fluttertoast.showToast(msg: "Плак!");
    }
    /*
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('Снимка нет.');
      }
    });

     */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Форма отправки',
                  style: TextStyle(fontSize: 50.0, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
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
                  onPressed: () {
                    getImage();
                  },
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
                  onPressed: () {
                    takePicture();
                  },
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
        ));
  }
}
