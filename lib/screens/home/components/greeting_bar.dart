import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/constants.dart';

class GreetingBar extends StatelessWidget {
  const GreetingBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var defTextStyle = const TextStyle(fontFamily: 'Coolvetica');
    return Stack(
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
              const Text('Hi, Dicoding!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Coolvetica',
                  )),
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
    );
  }
}
