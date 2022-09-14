import 'package:flutter/material.dart';

var defTextStyle = const TextStyle(fontFamily: 'Coolvetica');

class MerchantInfo extends StatelessWidget {
  final String openDays, openTime;
  const MerchantInfo({
    Key? key,
    required this.openDays,
    required this.openTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              const Icon(Icons.calendar_today),
              const SizedBox(height: 8.0),
              Text(
                openDays,
                style: defTextStyle,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              const Icon(Icons.access_time),
              const SizedBox(height: 8.0),
              Text(
                openTime,
                style: defTextStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
