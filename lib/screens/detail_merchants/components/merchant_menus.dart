import 'package:flutter/material.dart';
// import 'package:kuliner_dramaga/objects/foods.dart';
// import 'package:kuliner_dramaga/screens/home/home_sreen.dart';

class MerchantMenus extends StatelessWidget {
  const MerchantMenus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(flex: 1, child: Image.asset('assets/images/tampo.png')),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('place.name'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('place.location'),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
