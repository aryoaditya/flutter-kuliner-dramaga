import 'package:flutter/material.dart';
import 'package:kuliner_dramaga/constants.dart';

class FoodsNDrinks extends StatelessWidget {
  const FoodsNDrinks({
    Key? key,
    required this.image,
    required this.title,
    required this.street,
    required this.press,
  }) : super(key: key);

  final String image, title, street;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(image),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 40,
                        color: Colors.black.withOpacity(0.35))
                  ]),
              child: Row(children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "$title\n".toUpperCase(),
                    style: Theme.of(context).textTheme.button,
                  ),
                  TextSpan(
                      text: street,
                      style: const TextStyle(
                        color: Colors.grey,
                        height: 1,
                      ))
                ]))
              ]),
            ),
          )
        ],
      ),
    );
  }
}
