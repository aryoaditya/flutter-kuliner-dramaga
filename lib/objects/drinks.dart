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

  Drinks({
    required this.name,
    required this.price,
  });
}

var drinkMerchantList = [
  DrinkMerchant(
    image: 'assets/images/kopken.jpeg',
    name: 'Kopi Kenangan',
    location: 'Jl. Babakan Raya',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listDrinks: [
      Drinks(name: 'nama minuman1', price: 'harganya1'),
      Drinks(name: 'nama minuman2', price: 'harganya2'),
      Drinks(name: 'nama minuman3', price: 'harganya3'),
      Drinks(name: 'nama minuman4', price: 'harganya4'),
    ],
  ),
  DrinkMerchant(
    image: 'assets/images/munim.jpeg',
    name: "Munim",
    location: 'Jl. Babakan Tengah',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listDrinks: [
      Drinks(name: 'nama minuman1', price: 'harganya1'),
      Drinks(name: 'nama minuman2', price: 'harganya2'),
      Drinks(name: 'nama minuman3', price: 'harganya3'),
      Drinks(name: 'nama minuman4', price: 'harganya4'),
    ],
  ),
  DrinkMerchant(
    image: 'assets/images/esteh.jpeg',
    name: "Esteh Indonesia",
    location: 'Jl. Babakan Raya',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listDrinks: [
      Drinks(name: 'nama minuman1', price: 'harganya1'),
      Drinks(name: 'nama minuman2', price: 'harganya2'),
      Drinks(name: 'nama minuman3', price: 'harganya3'),
      Drinks(name: 'nama minuman4', price: 'harganya4'),
    ],
  )
];
