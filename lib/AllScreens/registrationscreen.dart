import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/AllScreens/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/AllScreens/mainscreen.dart';
import 'package:flutter_app/main.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_core/firebase_core.dart';

class RegistrationScreen extends StatelessWidget {
  static const String idScreen = "register";

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(35.0),
          child: Column(
            children: [
              SizedBox(
                height: 65.0,
              ),
              Text(
                "Регистрация",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1,
                    ),
                    TextField(
                      controller: nameTextEditingController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Имя",
                          labelStyle: TextStyle(
                            fontSize: 14,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          )),
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    TextField(
                      controller: phoneTextEditingController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelText: "Номер телефона",
                          labelStyle: TextStyle(
                            fontSize: 14,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          )),
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    TextField(
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Почта",
                          labelStyle: TextStyle(
                            fontSize: 14,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          )),
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    TextField(
                      controller: passwordTextEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Пароль",
                          labelStyle: TextStyle(
                            fontSize: 14,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          )),
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      color: Colors.orange,
                      textColor: Colors.white,
                      child: Container(
                        height: 50,
                        child: Center(
                          child: Text(
                            "Создать аккаунт",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(24)),
                      onPressed: () {
                        if (nameTextEditingController.text.length < 2) {
                          Fluttertoast.showToast(
                              msg: "Имя должно содержать не менее 2-х букв");
                        } else if (!emailTextEditingController.text
                            .contains('@')) {
                          Fluttertoast.showToast(msg: "Почта некорректна");
                        } else if (passwordTextEditingController.text.length <
                            6) {
                          Fluttertoast.showToast(
                              msg: "Длина пароля должна быть 6+ символов");
                        } else {
                          registerNewUser(context);
                        }
                      },
                    )
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LoginScreen.idScreen, (route) => false);
                },
                child: Text(
                  "Уже есть аккаунт? Войди здесь.",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  void registerNewUser(BuildContext context) async {
    /*
    final User firebaseUser = (await firebaseAuth
            .createUserWithEmailAndPassword(
                email: emailTextEditingController.text,
                password: passwordTextEditingController.text)
            .catchError((errorMsg) {
      Fluttertoast.showToast(msg: "Произошла ошибка: " + errorMsg.toString());
    }))
        .user;
    if (firebaseUser != null) {
      //user created
      //save data
      Map userDataMap = {
        "name": nameTextEditingController.text.trim(),
        "email": emailTextEditingController.text.trim(),
        "password": passwordTextEditingController.text.trim(),
      };

      userRef.child(firebaseUser.uid).set(userDataMap);
      Fluttertoast.showToast(msg: "Учётная запись зарегистрирована");
      Navigator.pushNamedAndRemoveUntil(
          context, MainScreen.idScreen, (route) => false);
    } else {
      // error
    }

     */
  }
}
