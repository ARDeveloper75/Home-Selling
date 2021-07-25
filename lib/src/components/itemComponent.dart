import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_one/src/configs/textTheme.dart';
import 'package:ui_one/src/controllers/itemData.dart';
import 'package:ui_one/src/pages/detailsPage.dart';

class ItemComponent extends StatelessWidget {
  final data = Get.put(ItemData(), permanent: true);
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        primary: false,
        itemCount: data.productData.length,
        itemBuilder: (BuildContext context, int index) {
          final item = data.productData[index];

          return GestureDetector(
            onTap: () {
              Get.to(
                DetailsPage(
                  product: item,
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
                                '${item['image']}',
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
                          '\$${item['price']}',
                          style: themeData.textTheme.headline1,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${item['address']}',
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
                          'bedrooms ${item['bedrooms']} / ',
                          style: themeData.textTheme.headline5,
                        ),
                        Text(
                          'bathrooms ${item['bathrooms']} / ',
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
