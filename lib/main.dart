import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:protofolio/config/themes.dart';
import 'package:protofolio/presentation/my-protofolio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Services.getHttp();
  // log(Services.requestModelList.length.toString());

  // DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  // WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
  // final deviceInfoPlugin = DeviceInfoPlugin();
  // Services.requestModelList.add(RequestModel(
  //   key: webBrowserInfo.userAgent.toString(),
  //   number: webBrowserInfo.platform.toString() + DateTime.now().toString(),
  // ));
  // await Services.httpPostAndPut();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahmad Al_Frehan',
      debugShowCheckedModeBanner: false,
      theme: MyAppTheme.myTheme,
      home: const MyProtofolio(),
    );
  }
}

class Services {
  static List<RequestModel> requestModelList = [];

  static httpPostAndGet() async {
    // var d = RequestModel().toJson(i);
    // }
    // List<>

    final response = await http.post(
      Uri.parse('https://json.extendsclass.com/bin'),

      ///https://json.extendsclass.com/bin/b16614671e0f
      headers: {
        'Api-key': '7d0e1b49-f49a-11ed-8cf9-0242ac110002',
        'Security-key': 'ahmadalfrehanahmadalfrehan',
        'Private': 'true',
      },

      body: json.encode({
        'data': [for (var i in requestModelList) RequestModel().toJson(i)]
      }),
    );
    log(response.toString());
    log(response.body.toString());
    log(response.statusCode.toString());
  }

  static httpPostAndPut() async {
    // var d = RequestModel().toJson(i);
    // }
    // List<>

    final response = await http.put(
      Uri.parse('https://json.extendsclass.com/bin/11037c1ef2f0'),

      ///https://json.extendsclass.com/bin/b16614671e0f
      headers: {
        'Api-key': '7d0e1b49-f49a-11ed-8cf9-0242ac110002',
        'Security-key': 'ahmadalfrehanahmadalfrehan',
        'Private': 'true',
      },

      body: json.encode({
        'data': [for (var i in requestModelList) RequestModel().toJson(i)]
      }),
    );
    log(response.toString());
    log(response.body.toString());
    log(response.statusCode.toString());
  }

  static getHttp() async {
    final response = await http.get(
      Uri.parse('https://json.extendsclass.com/bin/11037c1ef2f0'),
      headers: {
        'Api-key': '7d0e1b49-f49a-11ed-8cf9-0242ac110002',
        'Security-key': 'ahmadalfrehanahmadalfrehan',
        'Private': 'true',
      },
    );

    log(response.toString());
    log(response.body.toString());
    log(response.statusCode.toString());
    var l = json.decode(response.body);
    for (var i in l['data']) {
      requestModelList.add(RequestModel.fromJson(i));
    }
  }
}

class RequestModel {
  String? key;
  String? number;

  RequestModel({this.key, this.number});

  factory RequestModel.fromJson(Map<String, dynamic> data) {
    return RequestModel(
      key: data['key'],
      number: data['number'],
    );
  }

  Map<String, dynamic> toJson(RequestModel requestModel) {
    return {
      'key': requestModel.key,
      'number': requestModel.number,
    };
  }
}