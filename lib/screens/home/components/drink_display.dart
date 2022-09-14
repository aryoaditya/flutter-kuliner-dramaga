import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/objects/foods.dart';
import 'package:kuliner_dramaga/screens/detail_merchants/detail_screen_drinks.dart';
import 'package:kuliner_dramaga/screens/home/components/foods_n_drinks.dart';
import 'package:kuliner_dramaga/screens/home/components/title_with_more_btn.dart';
import '../../../objects/drinks.dart';

class DrinkDisplay extends StatelessWidget {
  const DrinkDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          TitleWithMoreBtn(txt: "Drinks", press: () {}),
          SizedBox(
            height: 230.0,
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final DrinkMerchant drink = drinkMerchantList[index];
                return FoodsNDrinks(
                  image: drink.image,
                  title: drink.name,
                  street: drink.location,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MerchantDetailScreenDrinks(
                        drink: drink,
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
