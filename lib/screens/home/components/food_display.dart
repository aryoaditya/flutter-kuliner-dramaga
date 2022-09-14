import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/objects/foods.dart';
import 'package:kuliner_dramaga/screens/detail_merchants/detail_screen_foods.dart';
import 'package:kuliner_dramaga/screens/home/components/foods_n_drinks.dart';
import 'package:kuliner_dramaga/screens/home/components/title_with_more_btn.dart';

class FoodDisplay extends StatelessWidget {
  const FoodDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          TitleWithMoreBtn(txt: "Foods", press: () {}),
          SizedBox(
            height: 230.0,
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final FoodMerchant food = foodMerchantList[index];
                return FoodsNDrinks(
                  image: food.image,
                  title: food.name,
                  street: food.location,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MerchantDetailScreenFoods(
                        food: food,
                      );
                    }));
                  },
                );
              },
              itemCount: foodMerchantList.length,
            ),
          ),
        ],
      ),
    );
  }
}
