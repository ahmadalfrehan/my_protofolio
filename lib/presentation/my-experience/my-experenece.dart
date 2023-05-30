import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protofolio/config/debug/screen-stability.dart';

import '../../config/style.dart';
import '../../config/textStyle.dart';

class MyExperience extends StatelessWidget {
  const MyExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var image =
        'assets/images/future.png';
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
                    if (MediaQuery.of(context).size.width > 480)
                      Semantics(
                        label:
                            'Experiential Chronicles: Unveiling the Transformative Chapters of my Journey',
                        child: const Text(
                          'Experiential Chronicles: Unveiling the Transformative Chapters of my Journey',
                          style: TextStyleMyApp.textStyle9,
                        ),
                      )
                    else
                      Expanded(
                        child: Semantics(
                          label:
                              'Experiential Chronicles: Unveiling the Transformative Chapters of my Journey',
                          child: const Text(
                            'Experiential Chronicles: Unveiling the Transformative Chapters of my Journey',
                            style: TextStyle(
                              color: colorDarkBlue,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                            // maxLines: 3,
                          ),
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
                          _squareLogo(context,
                              image: image,
                              company: 'Future-Code . Full Time',
                              time: 'Aug 2022 - May 2023'),
                          _squareLogo(context,
                              company: 'Freelance',
                              time: 'Nov 2021 - May 2023'),

                          // _squareLogo(context),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _squareLogo(context,
                              image: image,
                              company: 'Future-Code . Full Time',
                              time: 'Aug 2022 - May 2023'),

                          SizedBox(height: ScreenStability.height(20)),
                          _squareLogo(context,
                              company: 'Freelance',
                              time: 'Nov 2021 - May 2023'),
                          SizedBox(height: ScreenStability.height(20)),
                          // _squareLogo(context),
                        ],
                      ),
              ],
            )
          ],
        ),
        if (MediaQuery.of(context).size.width > 480)
          const SizedBox(height: 100)
        else
          const SizedBox(height: 50),
        Container(
          width: Get.width / 2,
          height: 8,
          decoration: BoxDecoration(
              color: colorHead, borderRadius: BorderRadius.circular(8)),
        ),
        const SizedBox(height: 50),
      ],
    );
  }

  _squareLogo(BuildContext context,
      {String? image, String? company, String? time}) {
    return Container(
      height: MediaQuery.of(context).size.width > 480
          ? ScreenStability.height(400)
          : ScreenStability.height(100),
      width: MediaQuery.of(context).size.width > 480
          ? ScreenStability.width(120)
          : ScreenStability.width(400),
      decoration: BoxDecoration(
          color: colorDarkBlue, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (MediaQuery.of(context).size.width > 480)
            SizedBox(height: ScreenStability.height(20)),
          if (MediaQuery.of(context).size.width > 480)
            SizedBox(height: ScreenStability.height(10)),
          if (MediaQuery.of(context).size.width > 480)
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _companyLogo(image: image),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Semantics(
                        label: 'Flutter Developer',
                        child: const Text(
                          'Flutter Developer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Semantics(
                    label: '$company',
                    child: Text('$company',
                        style: const TextStyle(
                          color: colorWhite,
                          fontSize: 10,
                        )),
                  ),
                  Text(
                    '$time',
                    style: const TextStyle(
                      color: colorWhite,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            )
          else
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _companyLogo(image: image),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Semantics(
                        label: 'Flutter Developer',
                        child: const Text(
                          'Flutter Developer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Semantics(
                        label: '$company',
                        child: Text(
                          '$company',
                          style: const TextStyle(
                            color: colorWhite,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Text(
                        '$time',
                        style: const TextStyle(
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

  _companyLogo({String? image}) {
    return Container(
      padding: EdgeInsets.all(image != null ? 1.2 : 3),
      decoration: BoxDecoration(
          color: colorWhite, borderRadius: BorderRadius.circular(5)),
      child: image == null
          ? const FlutterLogo(style: FlutterLogoStyle.stacked, size: 60)
          : Image.asset(image, height: 60, width: 60),
    );
  }
}
