import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/objects/drinks.dart';
import 'components/merchant_menus.dart';

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
          MenuTitle(),
          MerchantMenus(),
          MerchantMenus(),
          MerchantMenus(),
          MerchantMenus(),
          MerchantMenus(),
          MerchantMenus(),
          MerchantMenus(),
        ],
      ),
    );
  }
}

class MenuTitle extends StatelessWidget {
  const MenuTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: const Text('Menu',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }
}

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

class BackBtn extends StatelessWidget {
  const BackBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.white)))));
  }
}
