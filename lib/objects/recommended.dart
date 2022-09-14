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
  String image;

  Recs({
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

var recMerchantList = [
  RecMerchant(
    image: 'assets/images/chickntea.jpeg',
    name: "Chick n' Tea",
    location: 'Jl. Babakan Tengah',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listRecs: [
      Recs(
          name: 'Paket Combo',
          price: 'Rp 46.000',
          image: 'assets/images/paketCombo.jpg'),
      Recs(
          name: 'Paket Kentang',
          price: 'Rp 25.000',
          image: 'assets/images/paketKentang.jpg'),
      Recs(
          name: 'Paket Nasi',
          price: 'Rp 18.000',
          image: 'assets/images/paketNasi.jpg'),
    ],
  ),
  RecMerchant(
    image: 'assets/images/kopken.jpeg',
    name: 'Kopi Kenangan',
    location: 'Jl. Babakan Raya',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listRecs: [
      Recs(
          name: 'Avocado Coffee',
          price: 'Rp 28.000',
          image: 'assets/images/avocado.jpg'),
      Recs(
          name: 'Americano',
          price: 'Rp 15.000',
          image: 'assets/images/Americano.jpg'),
      Recs(
          name: 'Mocha Latte',
          price: 'Rp 28.000',
          image: 'assets/images/mocha.jpg'),
      Recs(
          name: 'Kopi Susu Gula Aren',
          price: 'Rp 20.000',
          image: 'assets/images/kopisusuaren.jpg'),
      Recs(
          name: 'Cappucino',
          price: 'Rp 22.000',
          image: 'assets/images/capucino.jpg')
    ],
  ),
  RecMerchant(
    image: 'assets/images/munim.jpeg',
    name: "Munim",
    location: 'Jl. Babakan Tengah',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    listRecs: [
      Recs(
          name: 'Milk Chocolate',
          price: 'Rp 15.000',
          image: 'assets/images/milkChocolate.jpeg'),
      Recs(
          name: 'Milk Tea Oreo',
          price: 'Rp 18.000',
          image: 'assets/images/milkTeaOreo.jpeg'),
      Recs(
          name: 'Milk Grape',
          price: 'Rp 15.000',
          image: 'assets/images/milkAndGrape.jpeg'),
      Recs(
          name: 'Oreo Milk',
          price: 'Rp 15.000',
          image: 'assets/images/MilkOreo.jpeg'),
    ],
  )
];
