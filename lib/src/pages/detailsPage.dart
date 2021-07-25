import 'package:flutter/material.dart';

import 'package:ui_one/src/configs/textTheme.dart';
import 'package:ui_one/src/models/product.dart';

class DetailsPage extends StatelessWidget {
  final Product? products;
  DetailsPage({
    this.products,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
            ),
            Stack(
              children: [
                Image.asset('${products!.image}'),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: color_White,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            size: 23,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: color_White,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.favorite_outline,
                            size: 23,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        '\$${products!.price}',
                        style: themeData.textTheme.headline1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        '${products!.address}',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                      border: Border.all(color: color_Black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        '20 Hours Ago',
                        style: TextStyle(
                          color: color_Black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'House Information',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  HomeInfo(
                    content: "${products!.area}",
                    name: "Square Foot",
                  ),
                  HomeInfo(
                    content: "${products!.bedrooms}",
                    name: "Bedrooms",
                  ),
                  HomeInfo(
                    content: "${products!.bathrooms}",
                    name: "Bathrooms",
                  ),
                  HomeInfo(
                    content: "${products!.garage}",
                    name: "Garage",
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                '${products!.description}',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            height: 55,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: color_DarkBlue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Message',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 55,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: color_DarkBlue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Call',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeInfo extends StatelessWidget {
  final String content;
  final String name;

  HomeInfo({required this.content, required this.name});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 85,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: color_Black.withOpacity(.30)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                content,
                style: themeData.textTheme.headline3,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            name,
            style: themeData.textTheme.headline4,
          )
        ],
      ),
    );
  }
}
