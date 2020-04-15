import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget{
  @override 
  _FavouritePageState createState() => _FavouritePageState();

}

class _FavouritePageState extends State<FavouritePage>{

  final textStyle = TextStyle(
      fontFamily: 'Pyidaungsu'
      );

  @override
  Widget build(BuildContext buildContext){
      return Center(
        child: Text(
          "အနှစ်သက်ဆုံး ပစ္စည်းများကြည့်ရန်",
          style: textStyle,
          ),
      );
  }
}