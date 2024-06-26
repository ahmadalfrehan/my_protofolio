import 'dart:js' as js;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/style.dart';

class MyCertificate extends StatefulWidget {
  const MyCertificate({Key? key}) : super(key: key);

  @override
  State<MyCertificate> createState() => _MyCertificateState();
}

class _MyCertificateState extends State<MyCertificate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          if (MediaQuery.of(context).size.width > 480)
            const SizedBox(height: 100)
          else
            const SizedBox(height: 50),
          Container(
            width: Get.width / 2,
            height: 8,
            decoration: BoxDecoration(
                color: colorHeadYellow, borderRadius: BorderRadius.circular(8)),
          ),
          const SizedBox(height: 50),
          const Row(
            children: [
              Stack(
                children: [
                  Text(
                    'My Certification',
                    style: TextStyle(
                      color: colorHeadYellow,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: colorHeadYellow,
                      decorationThickness: 5,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'My Certification',
                    style: TextStyle(
                      color: colorDarkBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          MediaQuery.of(context).size.width > 480
              ? Column(
            children: [

              const SizedBox(height: 50),
              Row(
                children: [
                  const SizedBox(width: 50),
                  _myCertificate(
                    'DCPC',
                    'dcpc',
                    'ICPC\n'
                        'Issued Sep 2021',
                        () {
                      if(kIsWeb) {
                        js.context.callMethod('open', ['https://drive.google.com/file/d/1bU-qDhr1VaGR2fAAgNqWxkgT2lelbHM0/view?usp=drivesdk']);
                      }
                    },
                  ),
                  const SizedBox(width: 50),
                  _myCertificate(
                      'Algorithmic Toolbox',
                      'algo',
                      ' UC San Diego\n'
                          'Issued Dec 2020', () {
                    if(kIsWeb) {
                      js.context.callMethod('open', ['https://www.coursera.org/account/accomplishments/certificate/DWN5E3VJWJAH?utm_source=android&utm_medium=certificate&utm_content=cert_image&utm_campaign=sharing_cta&utm_product=course']);
                    }
                  }),
                ],
              ),
              const SizedBox(height: 50),
              Row(children: [
                const SizedBox(width: 50),
                _myCertificate(
                  'Intro to Machine Learning',
                  'kaggle',
                  'Kaggle\n'
                      'Issued nov 2023',
                      () {
                    if(kIsWeb) {
                      js.context.callMethod('open', ['https://ahmadalfrehan.org/storage/images/Ahmad%20Al_Frehan%20-%20Intro%20to%20Machine%20Learning.png']);
                    }
                  },
                ),
                const SizedBox(width: 50),
                _myCertificate(
                  'Google Ux',
                  'google',
                  'Google\n'
                      'Issued Dec 2021', () {
                if(kIsWeb) {
                  js.context.callMethod('open', ['https://www.coursera.org/account/accomplishments/certificate/JM3ZNUPPFT6S?utm_source=android&utm_medium=certificate&utm_content=cert_image&utm_campaign=sharing_cta&utm_product=course']);
                }
              }),
              ],)
            ],
          )
              : Column(
            children: [
              const SizedBox(height: 50),
              _myCertificate(
                'Intro to Machine Learning',
                'kaggle',
                'Kaggle\n'
                    'Issued nov 2023',
                    () {
                  if(kIsWeb) {
                    js.context.callMethod('open', ['https://ahmadalfrehan.org/storage/images/Ahmad%20Al_Frehan%20-%20Intro%20to%20Machine%20Learning.png']);
                  }
                },
              ),
              const SizedBox(height: 50),
              _myCertificate(
                  'DCPC',
                  'dcpc',
                  'ICPC\n'
                      'Issued Sep 2021', () {
                if(kIsWeb) {
                  js.context.callMethod('open', ['https://drive.google.com/file/d/1bU-qDhr1VaGR2fAAgNqWxkgT2lelbHM0/view?usp=drivesdk']);
                }
              }),
              const SizedBox(height: 50),
              _myCertificate(
                  'Algorithmic Toolbox',
                  'algo',
                  ' UC San Diego\n'
                      'Issued Dec 2020', () {
                if(kIsWeb) {
                  js.context.callMethod('open', ['https://www.coursera.org/account/accomplishments/certificate/DWN5E3VJWJAH?utm_source=android&utm_medium=certificate&utm_content=cert_image&utm_campaign=sharing_cta&utm_product=course']);
                }
              }),
              const SizedBox(height: 50),
              _myCertificate(
                  'Google Ux',
                  'google',
                  'Google\n'
                      'Issued Dec 2021', () {
                if(kIsWeb) {
                  js.context.callMethod('open', ['https://www.coursera.org/account/accomplishments/certificate/JM3ZNUPPFT6S?utm_source=android&utm_medium=certificate&utm_content=cert_image&utm_campaign=sharing_cta&utm_product=course']);
                }
              }),
              const SizedBox(height: 20),
            ],
          ),
          const SizedBox(height: 50),
          _verticalCircles(),
        ],
      ),
    );
  }

  _verticalCircles() {
    return SizedBox(
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var i = 0; i < 6; ++i) const CircleAvatar(radius: 3,backgroundColor: colorHeadYellow,),
        ],
      ),
    );
  }

  _myCertificate(String cerName, String image, String desc, Function() onPressed) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        width: MediaQuery.of(context).size.width > 480
            ? Get.width / 2.4
            : double.infinity,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              decoration: BoxDecoration(
                color: colorDarkBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width > 480
                  ? Get.width / 2
                  : Get.width / 1.2,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        cerName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 17,
                        ),
                      ),
                      InkWell(
                        onTap: onPressed,
                        child: const Text(
                          'show it',
                          style: TextStyle(
                              color: colorHeadYellow,
                              fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        desc,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      const Text(''),
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: const Alignment(-1.1, -5),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/$image.png'),
                radius: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
