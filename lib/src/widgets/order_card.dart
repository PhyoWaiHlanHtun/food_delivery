import 'package:flutter/material.dart';

class OrderCard extends  StatelessWidget{

 final textStyleFood = TextStyle(
      fontFamily: 'PyidaungsuBold',
      fontSize: 16.0,
 );

 final textStyleRate = TextStyle(
      fontFamily: 'Pyidaungsu',
      color: Colors.blueAccent,
      fontSize: 16.0,
 ); 

final textStyleType = TextStyle(
      fontFamily: 'Pyidaungsu',
      color: Colors.grey,
      fontWeight: FontWeight.bold,
 );  



  @override
  Widget build(BuildContext buildContext){
      return Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 75.0,
              width: 45.0,
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap:(){},
                    child: Icon(
                      Icons.keyboard_arrow_up,
                      color: Color(0xFFD3D3D3),
                      ),
                    ),
                  Text(
                    "0",
                    style: TextStyle(fontSize: 18.0, color: Color(0xFFD3D3D3)),
                    ),
                  InkWell(
                    onTap:(){},
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xFFD3D3D3),
                      ),
                    )
                ],
              ),
            ),
            SizedBox(width: 20.0,),
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/order/launch.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 5.0),
                  ),
                ],
              ),
            ),
            SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "မြန်မာ ထမင်းကြော်",
                  style: textStyleFood,
                  ),
                  SizedBox(height: 5.0,),
                Text(
                  "3.0",
                  style: textStyleRate,
                  ),
                  SizedBox(height: 5.0,),
                Container(
                  height: 25.0,
                  width: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Row(
                        children: <Widget>[
                          Text(
                            "ကြက်သား",
                            style: textStyleType,
                            ),
                            SizedBox(width: 5.0,),
                          InkWell(
                            onTap: (){},
                            child: Text(
                            "x",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ),  
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.cancel,color: Colors.grey),
              ),
          ],
        )
        ),
      );
  }
}