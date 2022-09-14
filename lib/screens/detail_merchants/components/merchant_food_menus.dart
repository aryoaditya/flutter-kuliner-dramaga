import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/objects/foods.dart';

class MerchantFoodMenus extends StatelessWidget {
  final FoodMerchant food;
  const MerchantFoodMenus({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (var i = 0; i < food.listFoods.length; i++)
        Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(flex: 1, child: Image.asset(food.listFoods[i].getImage)),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(food.listFoods[i].getName,
                            style: const TextStyle(
                                fontSize: 15.0, fontFamily: 'Coolvetica')),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(food.listFoods[i].getPrice,
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
