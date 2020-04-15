import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {

  final textStyle = TextStyle(
      fontFamily: 'PyidaungsuBold'
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      child: TextField( 
        style: textStyle,
        decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 32.0, vertical:14.0),
        hintText: "အစားအစာ ရှာဖွေရန်",
        suffixIcon:Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        // prefixIcon: Icon(Icons.search),
        border: InputBorder.none,
        ),
    ),
    );
  }
}
