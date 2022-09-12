import 'package:flutter/material.dart';
import 'foods_n_drinks.dart';

class RecommendedCulinaries extends StatelessWidget {
  const RecommendedCulinaries({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FoodsNDrinks(
            image: 'assets/images/tampo.png',
            title: "Pancong Tampo\n".toUpperCase(),
            street: "Jalan Babakan Raya",
            press: () {},
          ),
          FoodsNDrinks(
            image: 'assets/images/tampo.png',
            title: "Pancong Tampo\n".toUpperCase(),
            street: "Jalan Babakan Raya",
            press: () {},
          ),
          FoodsNDrinks(
            image: 'assets/images/tampo.png',
            title: "Pancong Tampo\n".toUpperCase(),
            street: "Jalan Babakan Raya",
            press: () {},
          ),
        ],
      ),
    );
  }
}
