// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/screens/home/components/drink_display.dart';
import 'package:kuliner_dramaga/screens/home/components/food_display.dart';
import 'components/greeting_bar.dart';
import 'components/rec_display.dart';

var defTextStyle = const TextStyle(fontFamily: 'Coolvetica');

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('DRAMAGA CULINARY', style: defTextStyle),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: const <Widget>[
        // Greeting
        GreetingBar(),
        // Recommended Display
        RecDisplay(),
        Padding(padding: EdgeInsets.only(top: 30)),
        // Food Display,
        FoodDisplay(),
        Padding(padding: EdgeInsets.only(top: 30)),
        // Drink Display,
        DrinkDisplay(),
      ],
    ));
  }
}
