import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_one/src/configs/textTheme.dart';
import 'package:ui_one/src/pages/homePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = Get.width;
    return GetMaterialApp(
      theme: ThemeData(
          primaryColor: color_White,
          accentColor: color_DarkBlue,
          textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
          fontFamily: "Montserrat"),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
