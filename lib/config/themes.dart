import 'package:flutter/material.dart';
import 'package:protofolio/config/style.dart';

class MyAppTheme {
  static final myTheme = ThemeData(
      fontFamily: 'Karla',
      primarySwatch: primarySwatch,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: colorHead,
      ));
}
