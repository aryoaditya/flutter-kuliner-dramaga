import 'package:kuliner_dramaga/objects/merchants.dart';

class DrinkMerchant extends Merchants {
  List<Drinks> listDrinks;

  DrinkMerchant(
      {required super.image,
      required super.name,
      required super.location,
      required super.openDays,
      required super.openTime,
      required this.listDrinks});
}

class Drinks {
  String name;
  String price;
  String image;

  Drinks({
    required this.name,
    required this.price,
    required this.image,
  });

  String get getName {
    return name;
  }

  String get getPrice {
    return price;
  }

  String get getImage {
    return image;
  }
}

var drinkMerchantList = [
  DrinkMerchant(
    image: 'assets/images/kopken.jpeg',
    name: 'Kopi Kenangan',
    location: 'Jl. Babakan Raya',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listDrinks: [
      Drinks(
          name: 'Avocado Coffee',
          price: 'Rp 28.000',
          image: 'assets/images/avocado.jpg'),
      Drinks(
          name: 'Americano',
          price: 'Rp 15.000',
          image: 'assets/images/Americano.jpg'),
      Drinks(
          name: 'Mocha Latte',
          price: 'Rp 28.000',
          image: 'assets/images/mocha.jpg'),
      Drinks(
          name: 'Kopi Susu Gula Aren',
          price: 'Rp 20.000',
          image: 'assets/images/kopisusuaren.jpg'),
      Drinks(
          name: 'Cappucino',
          price: 'Rp 22.000',
          image: 'assets/images/capucino.jpg')
    ],
  ),
  DrinkMerchant(
    image: 'assets/images/munim.jpeg',
    name: "Munim",
    location: 'Jl. Babakan Tengah',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listDrinks: [
      Drinks(
          name: 'Milk Chocolate',
          price: 'Rp 15.000',
          image: 'assets/images/milkChocolate.jpeg'),
      Drinks(
          name: 'Milk Tea Oreo',
          price: 'Rp 18.000',
          image: 'assets/images/milkTeaOreo.jpeg'),
      Drinks(
          name: 'Milk Grape',
          price: 'Rp 15.000',
          image: 'assets/images/milkAndGrape.jpeg'),
      Drinks(
          name: 'Oreo Milk',
          price: 'Rp 15.000',
          image: 'assets/images/MilkOreo.jpeg'),
    ],
  ),
  DrinkMerchant(
    image: 'assets/images/esteh.jpeg',
    name: "Esteh Indonesia",
    location: 'Jl. Babakan Raya',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listDrinks: [
      Drinks(
          name: 'Esteh Milo',
          price: 'Rp 15.000',
          image: 'assets/images/estehMilo.png'),
      Drinks(
          name: 'Esteh Susu',
          price: 'Rp 15.000',
          image: 'assets/images/estehSusu.png'),
      Drinks(
          name: 'Chizu Red Velvet',
          price: 'Rp 19.000',
          image: 'assets/images/chizuRedVelvet.png'),
      Drinks(
          name: 'Esteh Matcha Original',
          price: 'Rp 15.000',
          image: 'assets/images/matchaOri.png'),
      Drinks(
          name: 'Strawberry Seasalt Matcha',
          price: 'Rp 19.000',
          image: 'assets/images/strawberrySeasaltMatcha.png'),
    ],
  )
];
