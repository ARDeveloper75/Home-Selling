import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_one/src/configs/textTheme.dart';
import 'package:ui_one/src/models/product.dart';

import 'package:ui_one/src/pages/detailsPage.dart';

class ItemComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        primary: false,
        itemCount: Product.allProducts.length,
        itemBuilder: (BuildContext context, int index) {
          final product = Product.allProducts[index];

          return GestureDetector(
            onTap: () {
              Get.to(
                DetailsPage(
                  products: product,
                ),
              );
            },
            child: Container(
              width: Get.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Column(
                            children: [
                              Image.asset(
                                '${product.image}',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 30,
                        child: Container(
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          '\$${product.price}',
                          style: themeData.textTheme.headline1,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${product.address}',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          'bedrooms ${product.bedrooms} / ',
                          style: themeData.textTheme.headline5,
                        ),
                        Text(
                          'bathrooms ${product.bathrooms} / ',
                          style: themeData.textTheme.headline5,
                        ),
                        Text(
                          '1440 sqft ',
                          style: themeData.textTheme.headline5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
