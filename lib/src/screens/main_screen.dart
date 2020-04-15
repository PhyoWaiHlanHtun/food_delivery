import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/order_page.dart';


class MainScreen extends StatefulWidget{
  @override
  _MainScreenState createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen>{

  int currentTableIndex = 0;

  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  OrderPage orderPage;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();

    pages = [homePage, orderPage];

    currentPage = homePage;
  }

  final textStyle = TextStyle(
      fontFamily: 'Pyidaungsu');

  @override
  Widget build(BuildContext context){
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(

          onTap: (int index){
            setState(() {
              currentTableIndex = index;
              currentPage = pages[index];
            });
          },

          currentIndex: currentTableIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                "စာမျက်နှာ",
                style: textStyle,
                ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text(
                "မှာရန်",
                style: textStyle,
                ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text(
                "အနှစ်သက်ဆုံး",
                style: textStyle,
                ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(
                "ကိုယ်ရေးအကျဉ်း",
                style: textStyle,
                ),
            ),
          ],
        ),
        body: currentPage,
      );
  }
}