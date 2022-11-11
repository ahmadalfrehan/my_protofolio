import 'package:flutter/material.dart';
import 'package:protofolio/config/style.dart';

import '../../config/textStyle.dart';

class MySkills extends StatelessWidget {
  const MySkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: colorDarkBlue,
        ),
        child: Column(
          children: [
            Stack(
              children: const [
                Text(
                  'My Skills',
                  style: TextStyleMyApp.textStyle7,
                ),
                Text(
                  'My Skills',
                  style: TextStyleMyApp.textStyle10,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
