// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// import 'package:kuliner_dramaga/constants.dart';
import 'components/greeting_bar.dart';
import 'components/recommended_culinaries.dart';
import 'components/title_with_more_btn.dart';

var defTextStyle = const TextStyle(fontFamily: 'Coolvetica');

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: const Text('Kuliner Dramaga')),
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
      children: <Widget>[
        // Greeting
        const GreetingBar(),
        // title Recommended
        TitleWithMoreBtn(txt: "Recommended", press: () {}),
        // content recommended
        const RecommendedCulinaries(),
        // title Foods
        TitleWithMoreBtn(txt: "Foods", press: () {}),
        // content Foods
        const RecommendedCulinaries(),
        // title Drinks
        TitleWithMoreBtn(txt: "Drinks", press: () {}),
        // content Drinks
        const RecommendedCulinaries(),
      ],
    ));
  }
}
