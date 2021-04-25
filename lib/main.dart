import 'package:flutter/material.dart';
import 'package:flutter_app/AllScreens/homeScreen.dart';
import 'package:flutter_app/AllScreens/mainscreen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:transparent_image/transparent_image.dart';

//import 'AllScreens/loginscreen.dart';
//import 'package:flutter_app/AllScreens/loginscreen.dart';
//import 'package:flutter_app/AllScreens/registrationscreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

//DatabaseReference userRef = FirebaseDatabase.instance.reference().child("users");

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecology Helper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute:
          HomeScreen.idScreen,
        //LoginScreen.idScreen,
      routes: {
        /*
        RegistrationScreen.idScreen: (context) => RegistrationScreen(),
        LoginScreen.idScreen: (context) => LoginScreen(),

         */
        MainScreen.idScreen: (context) => MainScreen(),
        HomeScreen.idScreen: (context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

