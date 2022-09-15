import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: 1,
      child: Container(
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
      ),
    );
  }
}
