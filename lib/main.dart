import 'dart:convert';
import 'dart:developer';

// import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:protofolio/config/themes.dart';
import 'package:protofolio/presentation/my-protofolio.dart';

httpPostAndGet() async {
  final response = await http.post(
    Uri.parse('https://json.extendsclass.com/bin'),///https://json.extendsclass.com/bin/b16614671e0f
    headers: {
      'Api-key': '7d0e1b49-f49a-11ed-8cf9-0242ac110002',
      'Security-key': 'ahmadalfrehanahmadalfrehan',
      'Private': 'true',
    },
    body: json.encode({
      'message': 'datadata',
    }),
  );
  log(response.toString());
  log(response.body.toString());
  log(response.statusCode.toString());
}

void main() async {
  // DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  // WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
  // final deviceInfoPlugin = DeviceInfoPlugin();
  // final deviceInfo2 = await deviceInfoPlugin.deviceInfo;
  // final allInfo = deviceInfo2.data;
  // await httpPostAndGet();
  // MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   home: Scaffold(
  //     body: Column(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       children: [
  //         Text(allInfo.toString()),
  //         const Divider(),
  //         Text(webBrowserInfo.userAgent.toString()),
  //         const Divider(),
  //         Text(webBrowserInfo.data.toString()),
  //         const Divider(),
  //         Text(webBrowserInfo.toString()),
  //         const Divider(),
  //       ],
  //     ),
  //   ),
  // )
  runApp(const MyApp());
// e.g. "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0"
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