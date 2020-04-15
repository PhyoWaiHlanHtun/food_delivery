import 'package:flutter/material.dart';
import 'package:food_delivery/src/widgets/food_category.dart';
import 'widgets/home_top_info.dart';
import 'widgets/search_field.dart';
import 'widgets/bought_foods.dart';
import 'data/foods_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Food> _foods = foods;

  final textStyle = TextStyle(
    fontFamily: 'PyidaungsuBold',
    fontSize: 16.0,
  );

  final textStyle2 = TextStyle(
      fontFamily: 'PyidaungsuBold', fontSize: 16.0, color: Colors.lightBlue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(
            height: 20.0,
          ),
          SearchField(),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "လူကြိုက်များသော အစားအစာများ",
                style: textStyle,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    "ကြည့်ရန်",
                    style: textStyle2,
                  )),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: _foods.map(_buildFoodItems).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        ratings: food.ratings,
      ),
    );
  }
}
