import 'package:flutter/material.dart';

const color_Black = Color.fromRGBO(48, 47, 48, 1.0);
const color_Grey = Color.fromRGBO(141, 141, 141, 1.0);

const color_White = Colors.white;
const color_DarkBlue = Color.fromRGBO(20, 25, 45, 1.0);

const TextTheme textThemeDefault = TextTheme(
    headline1: TextStyle(
        color: color_Black, fontWeight: FontWeight.w700, fontSize: 26),
    headline2: TextStyle(
        color: color_Black, fontWeight: FontWeight.w700, fontSize: 22),
    headline3: TextStyle(
        color: color_Black, fontWeight: FontWeight.w700, fontSize: 20),
    headline4: TextStyle(
        color: color_Black, fontWeight: FontWeight.w700, fontSize: 18),
    headline5: TextStyle(
        color: color_Black, fontWeight: FontWeight.w700, fontSize: 14),
    headline6: TextStyle(
        color: color_Black, fontWeight: FontWeight.w700, fontSize: 12),
    bodyText1: TextStyle(
        color: color_Black,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5),
    bodyText2: TextStyle(
        color: color_Grey,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5),
    subtitle1: TextStyle(
        color: color_Black, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: color_Grey, fontSize: 12, fontWeight: FontWeight.w400));

const TextTheme textThemeSmall = TextTheme(
    headline1: TextStyle(
        color: color_Black, fontWeight: FontWeight.w700, fontSize: 26),
    headline2: TextStyle(
        color: color_Black, fontWeight: FontWeight.w700, fontSize: 20),
    headline3: TextStyle(
        color: color_Black, fontWeight: FontWeight.w700, fontSize: 18),
    headline4: TextStyle(
        color: color_Black, fontWeight: FontWeight.w700, fontSize: 14),
    headline5: TextStyle(
        color: color_Black, fontWeight: FontWeight.w700, fontSize: 14),
    headline6: TextStyle(
        color: color_Black, fontWeight: FontWeight.w700, fontSize: 10),
    bodyText1: TextStyle(
        color: color_Black,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.5),
    bodyText2: TextStyle(
        color: color_Grey,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.5),
    subtitle1: TextStyle(
        color: color_Black, fontSize: 10, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: color_Grey, fontSize: 10, fontWeight: FontWeight.w400));
