import 'package:kuliner_dramaga/objects/merchants.dart';

class RecMerchant extends Merchants {
  List<Recs> listRecs;

  RecMerchant(
      {required super.image,
      required super.name,
      required super.location,
      required super.openDays,
      required super.openTime,
      required this.listRecs});
}

class Recs {
  String name;
  String price;

  Recs({
    required this.name,
    required this.price,
  });
}

var recMerchantList = [
  RecMerchant(
    image: 'assets/images/tampo.png',
    name: 'Pancong Tampo',
    location: 'Jl. Babakan Raya',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    listRecs: [
      Recs(name: 'nama makanan1', price: 'harganya1'),
      Recs(name: 'nama makanan2', price: 'harganya2'),
      Recs(name: 'nama makanan3', price: 'harganya3'),
      Recs(name: 'nama makanan4', price: 'harganya4'),
    ],
  ),
  RecMerchant(
    image: 'assets/images/chickntea.jpeg',
    name: "Chick n' Tea",
    location: 'Jl. Babakan Tengah',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listRecs: [
      Recs(name: 'nama makanan1', price: 'harganya1'),
      Recs(name: 'nama makanan2', price: 'harganya2'),
      Recs(name: 'nama makanan3', price: 'harganya3'),
      Recs(name: 'nama makanan4', price: 'harganya4'),
    ],
  ),
  RecMerchant(
    image: 'assets/images/pasundan.jpeg',
    name: "Ayam Geprek Pasundan",
    location: 'Jl. Babakan Raya',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listRecs: [
      Recs(name: 'nama makanan1', price: 'harganya1'),
      Recs(name: 'nama makanan2', price: 'harganya2'),
      Recs(name: 'nama makanan3', price: 'harganya3'),
      Recs(name: 'nama makanan4', price: 'harganya4'),
    ],
  )
];
