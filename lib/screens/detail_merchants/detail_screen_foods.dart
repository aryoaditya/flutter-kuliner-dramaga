import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/objects/foods.dart';
import 'components/back_btn.dart';
import 'components/menu_title.dart';
import 'components/merchant_info.dart';
import 'components/merchant_menus.dart';
import 'components/merchant_name.dart';

var defTextStyle = const TextStyle(fontFamily: 'Coolvetica');

class MerchantDetailScreenFoods extends StatelessWidget {
  final FoodMerchant food;
  const MerchantDetailScreenFoods({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(food: food),
    );
  }
}

class Body extends StatelessWidget {
  final FoodMerchant food;
  const Body({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Size screen
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: size.width,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(food.image),
                  ),
                ),
              ),
              const BackBtn()
            ],
          ),
          MerchantsName(name: food.name),
          MerchantInfo(openDays: food.openDays, openTime: food.openTime),
          const MenuTitle(),
          const MerchantMenus(),
        ],
      ),
    );
  }
}
