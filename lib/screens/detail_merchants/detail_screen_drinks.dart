import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/objects/drinks.dart';
import 'components/back_btn.dart';
import 'components/menu_title.dart';
import 'components/merchant_info.dart';
import 'components/merchant_drink_menus.dart';
import 'components/merchant_name.dart';

var defTextStyle = const TextStyle(fontFamily: 'Coolvetica');

class MerchantDetailScreenDrinks extends StatelessWidget {
  final DrinkMerchant drink;
  const MerchantDetailScreenDrinks({
    Key? key,
    required this.drink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(drink: drink),
    );
  }
}

class Body extends StatelessWidget {
  final DrinkMerchant drink;
  const Body({
    Key? key,
    required this.drink,
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
                    image: AssetImage(drink.image),
                  ),
                ),
              ),
              const BackBtn()
            ],
          ),
          MerchantsName(name: drink.name),
          MerchantInfo(openDays: drink.openDays, openTime: drink.openTime),
          const MenuTitle(),
          MerchantDrinkMenus(drink: drink),
        ],
      ),
    );
  }
}
