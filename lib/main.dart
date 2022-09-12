import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/constants.dart';
import 'package:kuliner_dramaga/screens/home/home_sreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuliner Dramaga',
      theme: ThemeData().copyWith(
        colorScheme: const ColorScheme.light(primary: primColor),
      ),
      home: const HomeScreen(),
    );
  }
}
