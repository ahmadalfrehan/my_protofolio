import 'package:flutter/material.dart';
import 'package:protofolio/config/debug/screen-stability.dart';

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
              height: MediaQuery.of(context).size.width > 480
                  ? MediaQuery.of(context).size.height / 4
                  : MediaQuery.of(context).size.height / 2.5,
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
                        'it was wonderfully to share my experiences with you',
                        style: TextStyleMyApp.textStyle9,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: ScreenStability.height(110)),
                MediaQuery.of(context).size.width > 480
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _squareLogo(context),
                          _squareLogo(context),
                          _squareLogo(context),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _squareLogo(context),
                          SizedBox(height: ScreenStability.height(20)),
                          _squareLogo(context),
                          SizedBox(height: ScreenStability.height(20)),
                          _squareLogo(context),
                        ],
                      ),
              ],
            )
          ],
        ),
      ],
    );
  }

  _squareLogo(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.width > 480
          ? ScreenStability.height(400)
          : ScreenStability.height(100),
      width: MediaQuery.of(context).size.width > 480
          ? ScreenStability.width(120)
          : ScreenStability.width(400),
      decoration:  BoxDecoration(color: colorDarkBlue,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (MediaQuery.of(context).size.width > 480)
            SizedBox(height: ScreenStability.height(20)),
          if (MediaQuery.of(context).size.width > 480)
            SizedBox(height: ScreenStability.height(10)),
          MediaQuery.of(context).size.width > 480
              ? Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _companyLogo(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Flutter Developer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      const Text('companyName . Full Time',
                          style: TextStyle(
                            color: colorWhite,
                            fontSize: 10,
                          )),
                      const Text(
                        'Aug 2022 - Present',
                        style: TextStyle(
                          color: colorWhite,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _companyLogo(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Flutter Developer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'companyName . Full Time',
                            style: TextStyle(
                              color: colorWhite,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'Aug 2022 - Present',
                            style: TextStyle(
                              color: colorWhite,
                              fontSize: 10,
                            ),
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

  _companyLogo() {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: colorWhite, borderRadius: BorderRadius.circular(5)),
      child: const FlutterLogo(
        style: FlutterLogoStyle.stacked,
        size: 60,
      ),
    );
  }
}
