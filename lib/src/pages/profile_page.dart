import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  @override 
  _ProfilePageState createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage>{

  final textStyle = TextStyle(
      fontFamily: 'Pyidaungsu'
      );

  @override
  Widget build(BuildContext buildContext){
      return Center(
        child: Text(
          "ကိုယ်ရေးအကျဉ်း ကြည့်ရန်",
          style: textStyle,
          ),
      );
  }
}