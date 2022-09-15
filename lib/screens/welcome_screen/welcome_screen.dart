// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/constants.dart';
import 'package:kuliner_dramaga/screens/home/home_sreen.dart';
import 'components/app_logo.dart';

// First Screen
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController controllerName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Size screen
    return Scaffold(
      body: Column(
        children: <Widget>[
          // App logo welcome page
          const AppLogo(),
          // Input name
          Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    // Input type
                    TextField(
                      controller: controllerName,
                      decoration: InputDecoration(
                          hintText: "Type your name here ...",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    // Button
                    SizedBox(
                      width: size.width * 0.3,
                      height: 50,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(primColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side:
                                          const BorderSide(color: primColor)))),
                          onPressed: () {
                            return _sendName(context);
                          },
                          child: Text("Submit".toUpperCase(),
                              style: const TextStyle(fontSize: 17))),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  void _sendName(BuildContext context) {
    String nameToSend = controllerName.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(
            name: nameToSend,
          ),
        ));
  }
}
