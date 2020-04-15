import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget{
  @override 
  _OrderPageState createState() => _OrderPageState();

}

class _OrderPageState extends State<OrderPage>{

  final textStyle = TextStyle(
      fontFamily: 'Pyidaungsu'
      );

  @override
  Widget build(BuildContext buildContext){
      return Center(
        child: Text(
          "၀ယ်ယူမည့်ပစ္စည်း မှာရန်",
          style: textStyle,
          ),
      );
  }
}