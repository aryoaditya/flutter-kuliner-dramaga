import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/objects/foods.dart';
import 'package:kuliner_dramaga/objects/recommended.dart';
import 'package:kuliner_dramaga/screens/detail_merchants/detail_screen_recs.dart';
import 'package:kuliner_dramaga/screens/home/components/foods_n_drinks.dart';
import 'package:kuliner_dramaga/screens/home/components/title_with_more_btn.dart';

class RecDisplay extends StatelessWidget {
  const RecDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // Title of category
          TitleWithMoreBtn(txt: "Recommended", press: () {}),
          // List of recommended foods and drinks
          SizedBox(
            height: 230.0,
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final RecMerchant rec = recMerchantList[index];
                // Card of recommended foods and drinks
                return FoodsNDrinks(
                  image: rec.image,
                  title: rec.name,
                  street: rec.location,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MerchantDetailScreenRecs(
                        rec: rec,
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
