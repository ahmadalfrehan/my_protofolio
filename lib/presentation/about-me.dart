import 'package:flutter/material.dart';
import 'package:protofolio/config/textStyle.dart';

import '../config/about.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Stack(
                      children: const [
                        Text(
                          'About me',
                          style: TextStyleMyApp.textStyle7,
                        ),
                        Text(
                          'About me',
                          style: TextStyleMyApp.textStyle5,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children:  [
                    const Expanded(
                      child: Text(
                        aboutMe,
                        style: TextStyleMyApp.textStyle6,
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/code.png'),
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                      //  child: Text('Ahmad',style:TextStyleMyApp.textStyle1,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
