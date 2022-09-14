import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/objects/recommended.dart';

class MerchantRecMenus extends StatelessWidget {
  final RecMerchant rec;
  const MerchantRecMenus({
    Key? key,
    required this.rec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (var i = 0; i < rec.listRecs.length; i++)
        Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(flex: 1, child: Image.asset(rec.listRecs[i].getImage)),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(rec.listRecs[i].getName,
                            style: const TextStyle(
                                fontSize: 15.0, fontFamily: 'Coolvetica')),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(rec.listRecs[i].getPrice,
                            style: const TextStyle(
                                fontSize: 20.0, fontFamily: 'Coolvetica')),
                      ],
                    ),
                  ))
            ],
          ),
        )
    ]);
  }
}
