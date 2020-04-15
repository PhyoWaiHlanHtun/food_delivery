import 'package:flutter/material.dart';
import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget{
  @override 
  _OrderPageState createState() => _OrderPageState();

}

class _OrderPageState extends State<OrderPage>{

  final textStyleTitle = TextStyle(
      fontFamily: 'PyidaungsuBold' ,
      color: Colors.black,
      );

        final textStyleBody = TextStyle(
      fontFamily: 'Pyidaungsu'
      );

       final textStyleCart = TextStyle(
      fontFamily: 'PyidaungsuBold',
      fontSize: 14.0,
      color: Colors.grey
      );

       final textStyleAmount = TextStyle(
      fontFamily: 'PyidaungsuBold',
      fontSize: 14.0,
      color: Colors.blueAccent
      );

      final textStyleTotal = TextStyle(
      fontFamily: 'PyidaungsuBold',
      fontSize: 14.0,
      color: Colors.black
      );

      final textStyleCheck = TextStyle(
      fontFamily: 'PyidaungsuBold',
      fontSize: 18.0,
      color: Colors.white
      );

  @override
  Widget build(BuildContext buildContext){
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "အစားအစာ ၀ယ်ယူရန်စာရင်း",
            style: textStyleTitle,
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0.0,
        ),
        body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          OrderCard(),
          OrderCard(),
          OrderCard(),
          _buildTotalContainer()
        ],
      ),
      );
  }

  Widget _buildTotalContainer(){
    return Container(
      height: 245.0,
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("ကြသင့်ငွေ", style: textStyleCart,),
                    Text("5,500 MMK", style: textStyleAmount,),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("လျော့ဈေး", style: textStyleCart,),
                    Text("500 MMK", style: textStyleAmount,),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("အခွန်", style: textStyleCart,),
                    Text("0.5 %", style: textStyleAmount,),
                  ],
                ),
                Divider(height: 40.0, color: Color(0xFFD3D3D3),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("စုစုပေါင်း ကြသင့်ငွေ", style: textStyleTotal,),
                    Text("4950 MMK", style: textStyleTotal,),
                  ],
                ),
                SizedBox(height: 20.0,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Center(
                    child: Text("ကြသင့်ငွေ ရှင်းရန်", style: textStyleCheck,),
                  ),
                ),
              ],
            ),
    );
  }

}