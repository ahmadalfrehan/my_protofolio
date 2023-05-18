import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protofolio/config/style.dart';

class TextStyleMyApp {
  static  TextStyle textStyle1 = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w800,
    fontSize: Get.width>480? 30:18,
    //fontFamily: 'Karla',
  );
  static TextStyle textStyle2 = TextStyle(
    color: colorHeadYellow,
    fontWeight: FontWeight.w800,
    fontSize: Get.width>480? 30:16,
  );
  static const TextStyle textStyle3 = TextStyle(
    color: colorHeadGrey,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static const TextStyle textStyle4 = TextStyle(
    color: colorHeadYellow,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );
  static const TextStyle textStyle7 = TextStyle(
    color: colorDarkBlue,
    fontWeight: FontWeight.w800,
    decoration: TextDecoration.lineThrough,
    decorationStyle: TextDecorationStyle.solid,
    decorationColor: colorHeadYellow,
    decorationThickness:4,
    fontSize: 18,
  );
  static const TextStyle textStyle5 = TextStyle(
    color: colorDarkBlue,
    fontWeight: FontWeight.w800,
    fontSize: 18,
  );
  static const TextStyle textStyle8 = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w800,
    decoration: TextDecoration.lineThrough,
    decorationStyle: TextDecorationStyle.solid,
    decorationColor: Colors.white,
    decorationThickness: 5,
    fontSize: 18,
  );
  static const TextStyle textStyle6 = TextStyle(
    color: colorBlack14,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static const TextStyle textStyle10 = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w800,
    fontSize: 18,

  );
  static const TextStyle textStyle9 = TextStyle(
    color: colorDarkBlue,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
}
