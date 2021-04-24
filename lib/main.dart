import 'package:flutter/material.dart';
import 'package:flutter_project/mainMap.dart';

 main() => runApp(MyApp());

 class MyApp extends StatelessWidget{
    @override
   Widget build(BuildContext context){
      return MaterialApp(
      title: 'Green helper',
        theme: ThemeData(
            primarySwatch: Colors.green),
        home: HomePage(),

        initialRoute: GMap.idScreen,

        routes: {
          GMap.idScreen: (context) => GMap(),
        }
      );
    }
 }

 class HomePage extends StatelessWidget{
   @override
   Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(
           title: Text('Green Informer' )
       ),
       body: Container(
           child: Center(
               child:Text ('Somethig will be here')
           )
       ),
     );
   }
 }