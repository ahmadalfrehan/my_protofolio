import 'package:flutter/material.dart';

import '../../config/style.dart';
import '../../config/textStyle.dart';

class MyExperience extends StatelessWidget {
  const MyExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: colorHeadYellow,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: const [
                        Text(
                          'My Experience',
                          style: TextStyleMyApp.textStyle8,
                        ),
                        Text(
                          'My Experience',
                          style: TextStyleMyApp.textStyle5,
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Expanded(
                      child: Text(
                        'it was wonderfull to share my eperiences with',
                        style: TextStyleMyApp.textStyle9,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _squareLogo(),
                    _squareLogo(),
                    _squareLogo(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  _squareLogo() {
    return Container(
      height: 250,
      width: 100,
      decoration: const BoxDecoration(color: colorDarkBlue),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const Text(
            'Logo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 50),
          //  const Spacer(),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'My Role',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'it was wonderfull to share my eperiences with',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
