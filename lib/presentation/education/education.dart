import 'package:flutter/material.dart';
import 'package:protofolio/config/debug/screen-stability.dart';

import '../../config/style.dart';
import '../../config/textStyle.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var image = 'assets/images/img.png';
    var imageAlp = 'assets/images/aleppo.png';
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
                          'Education',
                          style: TextStyleMyApp.textStyle8,
                        ),
                        Text(
                          'Education',
                          style: TextStyleMyApp.textStyle5,
                        ),
                      ],
                    ),
                    const Spacer(),
                    MediaQuery.of(context).size.width > 480
                        ? const Text(
                            'Sharing My Education Journey with You',
                            style: TextStyleMyApp.textStyle9,
                            maxLines: 3,
                          )
                        : const Expanded(
                            child: Text(
                            'Sharing My Education Journey with You',
                            style: TextStyleMyApp.textStyle9,
                            maxLines: 3,
                          )),
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
                              company: 'Student, Artificial Intelligence',
                              time: 'Oct 2022 - Present'),
                          _squareLogo(context,
                              image: image,
                              company: 'Student, Informatics Technology',
                              time: 'Oct 2020 - Present'),
                          _squareLogo(context,
                              univ: 'Aleppo University',
                              image: imageAlp,
                              company: 'Student, Informatics Technology',
                              time: 'Oct 2019 - Sep 2020'),

                          // _squareLogo(context),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _squareLogo(context,
                              image: image,
                              company: 'Student, Artificial Intelligence',
                              time: 'Oct 2022 - Present'),
                          SizedBox(height: ScreenStability.height(20)),
                          _squareLogo(context,
                              image: image,
                              company: 'Student, Informatics Technology',
                              time: 'Oct 2020 - Present'),
                          SizedBox(height: ScreenStability.height(20)),
                          _squareLogo(context,
                              univ: 'Aleppo University',
                              image: imageAlp,
                              company: 'Student, Informatics Technology',
                              time: 'Oct 2019 - Sep 2020'),
                          // _squareLogo(context),
                        ],
                      ),
              ],
            )
          ],
        ),
      ],
    );
  }

  _squareLogo(BuildContext context,
      {String? image, String? company, String? time, String? univ}) {
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
          MediaQuery.of(context).size.width > 480
              ? Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _companyLogo(image: image),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            univ ?? 'Damascus University',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      Text('$company',
                          style: const TextStyle(
                            color: colorWhite,
                            fontSize: 10,
                          )),
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
              : Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _companyLogo(image: image),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            univ ?? 'Damascus University',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            '$company',
                            style: const TextStyle(
                              color: colorWhite,
                              fontSize: 10,
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
