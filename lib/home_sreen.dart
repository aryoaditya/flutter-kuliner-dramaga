// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/constants.dart';

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
    // ukuran layar
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        // Greeting
        Stack(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              height: size.height * 0.13,
              decoration: BoxDecoration(
                  color: primColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 40,
                        color: Colors.black.withOpacity(0.35))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('Hi, Dicoding!'),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/tampo.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
          ],
        ),
        // Content
        SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TitleWithCustomUnderlined(text: "Recommended"),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: primColor,
                    onPressed: () {},
                    child: const Text("More"),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecommendedCulinary(
                    image: 'assets/images/tampo.png',
                    title: "Pancong Tampo\n".toUpperCase(),
                    street: "Jalan Babakan Raya",
                    press: () {},
                  ),
                  RecommendedCulinary(
                    image: 'assets/images/tampo.png',
                    title: "Pancong Tampo\n".toUpperCase(),
                    street: "Jalan Babakan Raya",
                    press: () {},
                  ),
                  RecommendedCulinary(
                    image: 'assets/images/tampo.png',
                    title: "Pancong Tampo\n".toUpperCase(),
                    street: "Jalan Babakan Raya",
                    press: () {},
                  ),
                ],
              ),
            ),
          ],
        )),
      ],
    );
  }
}

class RecommendedCulinary extends StatelessWidget {
  const RecommendedCulinary({
    Key? key,
    required this.image,
    required this.title,
    required this.street,
    required this.press,
  }) : super(key: key);

  final String image, title, street;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(image),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 40,
                        color: Colors.black.withOpacity(0.35))
                  ]),
              child: Row(children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "$title\n".toUpperCase(),
                    style: Theme.of(context).textTheme.button,
                  ),
                  TextSpan(
                      text: street,
                      style: TextStyle(
                        color: Colors.grey,
                        height: 1,
                      ))
                ]))
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderlined extends StatelessWidget {
  const TitleWithCustomUnderlined({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: defaultPadding / 4),
              child: Text(text,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(right: defaultPadding / 4),
                height: 7,
                color: primColor.withOpacity(0.2),
              ),
            )
          ],
        ));
  }
}
