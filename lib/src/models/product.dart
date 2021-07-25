import 'package:flutter/cupertino.dart';

class Product {
  final String image;
  final int price;
  final String address;
  final int bedrooms;
  final int bathrooms;
  final int area;
  final int garage;
  final String description;
  Product({
    @required this.image,
    @required this.price,
    @required this.address,
    @required this.bedrooms,
    @required this.bathrooms,
    @required this.area,
    @required this.garage,
    @required this.description,
  });
}
