import 'package:flutter/material.dart';
// import 'package:kuliner_dramaga/constants.dart';

// class
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
      width: size.width * 0.45,
      child: InkWell(
        onTap: press,
        child: Card(
          child: Column(children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage(image)))),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        title.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        street,
                        textAlign: TextAlign.start,
                        style: const TextStyle(color: Colors.grey, height: 2),
                      )
                    ],
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
