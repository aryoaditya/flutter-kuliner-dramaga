// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.txt,
    required this.press,
  }) : super(key: key);

  final String txt;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWithCustomUnderlined(text: txt),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: primColor,
            onPressed: press,
            child: const Text("More"),
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
    return SizedBox(
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
