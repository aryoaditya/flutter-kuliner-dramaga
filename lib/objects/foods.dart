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
  String image;

  Foods({required this.name, required this.price, required this.image});

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

var foodMerchantList = [
  FoodMerchant(
    image: 'assets/images/tampo.png',
    name: 'Pancong Tampo',
    location: 'Jl. Babakan Raya',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    listFoods: [
      Foods(
          name: 'Pancong Original',
          price: 'Rp 10.000',
          image: 'assets/images/pancongori.jpg'),
      Foods(
          name: 'Pancong Cokelat',
          price: 'Rp 13.000',
          image: 'assets/images/pancongCoklat.jpeg'),
      Foods(
          name: 'Pancong Keju',
          price: 'Rp 13.000',
          image: 'assets/images/pancongKeju.jpg'),
    ],
  ),
  FoodMerchant(
    image: 'assets/images/chickntea.jpeg',
    name: "Chick n' Tea",
    location: 'Jl. Babakan Tengah',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listFoods: [
      Foods(
          name: 'Paket Combo',
          price: 'Rp 46.000',
          image: 'assets/images/paketCombo.jpg'),
      Foods(
          name: 'Paket Kentang',
          price: 'Rp 25.000',
          image: 'assets/images/paketKentang.jpg'),
      Foods(
          name: 'Paket Nasi',
          price: 'Rp 18.000',
          image: 'assets/images/paketNasi.jpg'),
    ],
  ),
  FoodMerchant(
    image: 'assets/images/pasundan.jpeg',
    name: "Ayam Geprek Pasundan",
    location: 'Jl. Babakan Raya',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listFoods: [
      Foods(
          name: 'Ayam Geprek Original',
          price: 'Rp 18.000',
          image: 'assets/images/ayamNasi.jpeg'),
      Foods(
          name: 'Ayam Tahu Tempe',
          price: 'Rp 22.000',
          image: 'assets/images/ayamTahu.jpeg'),
      Foods(
          name: 'Ayam Tahu Tempe Terong',
          price: 'Rp 25.000',
          image: 'assets/images/ayamTahuTerong.jpeg'),
    ],
  )
];
