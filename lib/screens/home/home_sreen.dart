// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/screens/home/components/drink_display.dart';
import 'package:kuliner_dramaga/screens/home/components/food_display.dart';
import 'components/greeting_bar.dart';

var defTextStyle = const TextStyle(fontFamily: 'Coolvetica');

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0, title: Text('DRAMAGA CULINARY', style: defTextStyle)),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        // Greeting
        const GreetingBar(),
        //FoodDisplay(),
        FoodDisplay(),
        //FoodDisplay(),
        DrinkDisplay(),
      ],
    ));
  }
}
