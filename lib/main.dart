import 'dart:convert';
import 'dart:developer';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:protofolio/config/themes.dart';
import 'package:protofolio/presentation/my-protofolio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Services.getHttp();
  Services.ipDetails = await Services.getIP();
  log(Services.requestModelList.length.toString());
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
  Services.requestModelList.add(RequestModel(
    key: webBrowserInfo.userAgent.toString(),
    number: '${webBrowserInfo.platform} date :${DateTime.now()},'
        "ip : ${Services.ipDetails?.ip} , "
        "continent_code : ${Services.ipDetails?.continent_code} , "
        "continent_name : ${Services.ipDetails?.continent_name} , "
        "country_code2 : ${Services.ipDetails?.country_code2} , "
        "country_code3 : ${Services.ipDetails?.country_code3} , "
        "country_name : ${Services.ipDetails?.country_name} , "
        "country_capital : ${Services.ipDetails?.country_capital} , "
        "state_prov : ${Services.ipDetails?.state_prov} , "
        "state_code : ${Services.ipDetails?.state_code} , "
        "district : ${Services.ipDetails?.district} , "
        "city : ${Services.ipDetails?.city} , "
        "zipcode : ${Services.ipDetails?.zipcode} , "
        "latitude : ${Services.ipDetails?.latitude} , "
        "longitude : ${Services.ipDetails?.longitude} , "
        "is_eu : ${Services.ipDetails?.is_eu} , "
        "calling_code : ${Services.ipDetails?.calling_code} , "
        "country_tld : ${Services.ipDetails?.country_tld} , "
        "languages : ${Services.ipDetails?.languages} , "
        "country_flag : ${Services.ipDetails?.country_flag} , "
        "geoname_id : ${Services.ipDetails?.geoname_id} , "
        "isp : ${Services.ipDetails?.isp} , "
        "connection_type : ${Services.ipDetails?.connection_type} , "
        "organization : ${Services.ipDetails?.organization} , "
        "currency {"
        "code: ${Services.ipDetails?.currency?.code} , "
        "name : ${Services.ipDetails?.currency?.name} , "
        "} , "
        "time_zone {"
        "name : ${Services.ipDetails?.timeZone?.name} , "
        "current_time : ${Services.ipDetails?.timeZone?.current_time} , "
        "}",
  ));
  await Services.httpPostAndPut();
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
  static IpDetails? ipDetails;

  static Future<IpDetails?> getIP() async {
    try {
      const url =
          'https://api.ipgeolocation.io/ipgeo?apiKey=e5be09643bc143769b7c401b017dc8ad';
      var response = await http.get(Uri.parse(url));
      if (response.statusCode >= 200 && response.statusCode <= 300) {
        log(response.body.toString());
        IpDetails ipDetails2 = IpDetails.fromJson(json.decode(response.body));
        return ipDetails2;
      } else {
        log(response.body.toString());
        return null;
      }
    } catch (exception) {
      log(exception.toString());
      return null;
    }
  }

  static List<RequestModel> requestModelList = [];

  static httpPostAndGet() async {
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
    final response = await http.put(
      Uri.parse('https://json.extendsclass.com/bin/b74989954456'),
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
      Uri.parse('https://json.extendsclass.com/bin/b74989954456'),
      headers: {
        'Api-key': '7d0e1b49-f49a-11ed-8cf9-0242ac110002',
        'Security-key': 'ahmadalfrehanahmadalfrehan',
        'Private': 'true',
      },
    );

    log(response.toString());
    log(response.body.toString());
    log(response.statusCode.toString());
    try {
      var l = json.decode(response.body);
      for (var i in l['data']) {
        requestModelList.add(RequestModel.fromJson(i));
      }
    } catch (error) {
      log(error.toString());
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

class Currency {
  String? code;

  String? name;

  Currency(this.code, this.name);

  factory Currency.fromJson(Map<String, dynamic> data) {
    return Currency(data['code'], data['name']);
  }
}

class TimeZone {
  String? name;
  String? current_time;

  TimeZone(this.name, this.current_time);

  factory TimeZone.fromJson(Map<String, dynamic> data) {
    return TimeZone(data['name'], data['current_time']);
  }
}

class IpDetails {
  String? ip;
  String? continent_code;
  String? continent_name;
  String? country_code2;
  String? country_code3;
  String? country_name;
  String? country_capital;
  String? state_prov;
  String? state_code;
  String? district;
  String? city;
  String? zipcode;
  String? latitude;
  String? longitude;
  bool? is_eu;
  String? calling_code;
  String? country_tld;
  String? languages;
  String? country_flag;
  int? geoname_id;
  String? isp;
  String? connection_type;
  String? organization;
  Currency? currency;
  TimeZone? timeZone;

  IpDetails({
    required this.ip,
    required this.continent_code,
    required this.continent_name,
    required this.country_code2,
    required this.country_code3,
    required this.country_name,
    required this.country_capital,
    required this.state_prov,
    required this.state_code,
    required this.district,
    required this.city,
    required this.zipcode,
    required this.latitude,
    required this.longitude,
    required this.is_eu,
    required this.calling_code,
    required this.country_tld,
    required this.languages,
    required this.country_flag,
    required this.geoname_id,
    required this.isp,
    required this.connection_type,
    required this.organization,
    required this.currency,
    required this.timeZone,
  });

  factory IpDetails.fromJson(Map<String, dynamic> data) {
    return IpDetails(
      ip: data['ip'],
      continent_code: data['continent_code'],
      continent_name: data['continent_name'],
      country_code2: data['country_code2'],
      country_code3: data['country_code3'],
      country_name: data['country_name'],
      country_capital: data['country_capital'],
      state_prov: data['state_prov'],
      state_code: data['state_code'],
      district: data['district'],
      city: data['city'],
      zipcode: data['zipcode'],
      latitude: data['latitude'],
      longitude: data['longitude'],
      is_eu: data['is_eu'],
      calling_code: data['calling_code'],
      country_tld: data['country_tld'],
      languages: data['languages'],
      country_flag: data['country_flag'],
      geoname_id: data['geoname_id'],
      isp: data['isp'],
      connection_type: data['connection_type'],
      organization: data['organization'],
      currency: Currency.fromJson(data['currency']),
      timeZone: TimeZone.fromJson(data['time_zone']),
    );
  }

// String? status;
// String? country;
// String? countryCode;
// String? region;
// String? regionName;
// String? city;
// String? zip;
// double? lat;
// double? lon;
// String? timezone;
// String? isp;
// String? org;
// String? as;
// String? query;
//
// IpDetails({
//   required this.status,
//   required this.country,
//   required this.countryCode,
//   required this.region,
//   required this.regionName,
//   required this.city,
//   required this.zip,
//   required this.lat,
//   required this.lon,
//   required this.timezone,
//   required this.isp,
//   required this.org,
//   required this.as,
//   required this.query,
// });
//
// factory IpDetails.fromJson(Map<String, dynamic> data) {
//   return IpDetails(
//     status: data['status'],
//     country: data['country'],
//     countryCode: data['countryCode'],
//     region: data['region'],
//     regionName: data['regionName'],
//     city: data['city'],
//     zip: data['zip'],
//     lat: data['lat'],
//     lon: data['lon'],
//     timezone: data['timezone'],
//     isp: data['isp'],
//     org: data['org'],
//     as: data['as'],
//     query: data['query'],
//   );
// }
}