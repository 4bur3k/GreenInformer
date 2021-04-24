import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/AllScreens/registrationscreen.dart';

class LoginScreen extends StatelessWidget {
  static const String idScreen = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 65.0,
              ),
              Text(
                "Авторизация",
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Логин",
                          labelStyle: TextStyle(
                            fontSize: 14,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          )),
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 1,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Пароль",
                          labelStyle: TextStyle(
                            fontSize: 14,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          )
                      ),
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 10,),
                    RaisedButton(
                      color: Colors.orange,
                      textColor: Colors.white,
                      child: Container(
                        height: 50,
                        child: Center(
                          child: Text(
                            "Войти",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(24)
                      ),
                      onPressed: (){
                        print("logging button");
                      },
                    )
                  ],
                ),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, RegistrationScreen.idScreen, (route) => false);
                },
                child: Text(
                  "Нет аккаунта? Зарегистрируйся здесь.",

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
