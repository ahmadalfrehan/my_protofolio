import 'package:flutter/material.dart';
import 'package:protofolio/config/themes.dart';
import 'package:protofolio/presentation/my-protofolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyAppTheme.myTheme,
      home: const MyProtofolio(),
    );
  }
}