// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/screens/home/components/drink_display.dart';
import 'package:kuliner_dramaga/screens/home/components/food_display.dart';
import 'components/greeting_bar.dart';
import 'components/rec_display.dart';

// Font style
var defTextStyle = const TextStyle(fontFamily: 'Coolvetica');

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Text('DRAMAGA CULINARY', style: defTextStyle),
          centerTitle: true,
          automaticallyImplyLeading: false),
      body: Body(greetingName: name),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key, required this.greetingName}) : super(key: key);

  final String greetingName;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        // Greeting
        GreetingBar(name: greetingName),
        // Recommended Display
        const RecDisplay(),
        const Padding(padding: EdgeInsets.only(top: 30)),
        // Food Display,
        const FoodDisplay(),
        const Padding(padding: EdgeInsets.only(top: 30)),
        // Drink Display,
        const DrinkDisplay(),
      ],
    ));
  }
}
