import 'package:kuliner_dramaga/objects/merchants.dart';

class FoodMerchant extends Merchants {
  List<Foods> listFoods;

  FoodMerchant(
      {required super.image,
      required super.name,
      required super.location,
      required super.openDays,
      required super.openTime,
      required this.listFoods});
}

class Foods {
  String name;
  String price;

  Foods({
    required this.name,
    required this.price,
  });
}

var foodMerchantList = [
  FoodMerchant(
    image: 'assets/images/tampo.png',
    name: 'Pancong Tampo',
    location: 'Jl. Babakan Raya',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    listFoods: [
      Foods(name: 'nama makanan1', price: 'harganya1'),
      Foods(name: 'nama makanan2', price: 'harganya2'),
      Foods(name: 'nama makanan3', price: 'harganya3'),
      Foods(name: 'nama makanan4', price: 'harganya4'),
    ],
  ),
  FoodMerchant(
    image: 'assets/images/chickntea.jpeg',
    name: "Chick n' Tea",
    location: 'Jl. Babakan Tengah',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listFoods: [
      Foods(name: 'nama makanan1', price: 'harganya1'),
      Foods(name: 'nama makanan2', price: 'harganya2'),
      Foods(name: 'nama makanan3', price: 'harganya3'),
      Foods(name: 'nama makanan4', price: 'harganya4'),
    ],
  ),
  FoodMerchant(
    image: 'assets/images/pasundan.jpeg',
    name: "Ayam Geprek Pasundan",
    location: 'Jl. Babakan Raya',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listFoods: [
      Foods(name: 'nama makanan1', price: 'harganya1'),
      Foods(name: 'nama makanan2', price: 'harganya2'),
      Foods(name: 'nama makanan3', price: 'harganya3'),
      Foods(name: 'nama makanan4', price: 'harganya4'),
    ],
  )
];
