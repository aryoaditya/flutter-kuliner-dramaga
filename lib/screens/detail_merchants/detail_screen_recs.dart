import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/objects/foods.dart';
import 'package:kuliner_dramaga/objects/recommended.dart';
import 'components/back_btn.dart';
import 'components/menu_title.dart';
import 'components/merchant_info.dart';
import 'components/merchant_menus.dart';
import 'components/merchant_name.dart';

var defTextStyle = const TextStyle(fontFamily: 'Coolvetica');

class MerchantDetailScreenRecs extends StatelessWidget {
  final RecMerchant rec;
  const MerchantDetailScreenRecs({
    Key? key,
    required this.rec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(rec: rec),
    );
  }
}

class Body extends StatelessWidget {
  final RecMerchant rec;
  const Body({
    Key? key,
    required this.rec,
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
                    image: AssetImage(rec.image),
                  ),
                ),
              ),
              const BackBtn()
            ],
          ),
          MerchantsName(name: rec.name),
          MerchantInfo(openDays: rec.openDays, openTime: rec.openTime),
          const MenuTitle(),
          const MerchantMenus(),
        ],
      ),
    );
  }
}
