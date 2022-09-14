import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/objects/drinks.dart';

class MerchantDrinkMenus extends StatelessWidget {
  final DrinkMerchant drink;
  const MerchantDrinkMenus({
    Key? key,
    required this.drink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (var i = 0; i < drink.listDrinks.length; i++)
        Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 1, child: Image.asset(drink.listDrinks[i].getImage)),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(drink.listDrinks[i].getName,
                            style: const TextStyle(
                                fontSize: 15.0, fontFamily: 'Coolvetica')),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(drink.listDrinks[i].getPrice,
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
