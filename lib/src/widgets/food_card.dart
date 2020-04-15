import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  FoodCard({this.categoryName, this.imagePath, this.numberOfItems});
 
  final textStyle = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'PyidaungsuBold');

      final textStyle1 = TextStyle(
      fontFamily: 'Pyidaungsu');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(imagePath),
                height: 65.0,
                width: 65.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    categoryName,
                    style:
                        textStyle,
                  ),
                  Text(
                    "$numberOfItems အမျိုးအစားများ",
                    style: textStyle1,
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
