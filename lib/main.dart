import 'package:flutter/material.dart';

 main() => runApp(MyApp());

 class MyApp extends StatelessWidget{
    @override
   Widget build(BuildContext context){
      return MaterialApp(
      title: 'Green helper',
        theme: ThemeData(
            primarySwatch: Colors.green),
        home: HomePage(),
      );
    }
 }

 class HomePage extends StatelessWidget{
   @override
   Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(
           title: Text('Green Helper' )
       ),
       body: Container(
           child: Center(
               child:Text ('Somethig will be here')
           )
       ),
     );
   }
 }