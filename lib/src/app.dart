import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Code X Food Delivery App",
      theme: ThemeData(
        primaryColor: Colors.blueAccent
      ),
        home: MainScreen(), 
    );
  }

}