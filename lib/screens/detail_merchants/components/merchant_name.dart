import 'package:flutter/material.dart';

class MerchantsName extends StatelessWidget {
  final String name;
  const MerchantsName({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0, left: 10),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 30.0, fontFamily: 'Coolvetica'),
      ),
    );
  }
}
