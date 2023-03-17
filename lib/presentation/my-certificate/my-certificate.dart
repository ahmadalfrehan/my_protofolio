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
          const SizedBox(height: 50),
          Row(
            children: [
              Stack(
                children: const [
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
          const SizedBox(
            height: 50,
          ),
          _myCertificate(
              'DCPC',
              'dcpc',
              'ICPC\n'
                  'Issued Sep 2021', () {
            print('object');
          }),
          const SizedBox(height: 50),
          _myCertificate(
              'Algorithmic Toolbox',
              'algo',
              ' UC San Diego\n'
                  'Issued Dec 2020', () {
            print('object');
          }),
          const SizedBox(height: 50),
          _myCertificate(
              'Google Ux',
              'google',
              'Google\n'
                  'Issued Dec 2021', () {
            print('object');
          }),
          const SizedBox(height: 50),
          // const SizedBox(height: 100)
        ],
      ),
    );
  }

  _myCertificate(
      String cerName, String image, String desc, Function() onPressed) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        width: MediaQuery.of(context).size.width > 480
            ? Get.width / 2
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
              alignment: const Alignment(-1.2, -5),
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
