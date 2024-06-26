import 'dart:js' as js;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protofolio/config/style.dart';
import 'package:protofolio/presentation/head/getx/headcontroller.dart';
import 'package:protofolio/presentation/head/projectsMine.dart';

import '../../config/textStyle.dart';

class Head extends StatelessWidget {
  Head({Key? key}) : super(key: key);
  final controller = Get.put(HeadController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorHead,
      child: MediaQuery.of(context).size.width > 480
          ? Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Welcome to my website!',
                              style: TextStyleMyApp.textStyle1,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Semantics(
                                label: 'Ahmad Al_Frehan',
                                child: Text(
                                  'I\'m Ahmad Al_Frehan',
                                  style: TextStyleMyApp.textStyle2,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TyperAnimatedText(
                                    'Flutter Developer | AI Student | C++',
                                    textStyle: TextStyleMyApp.textStyle3,
                                  ),
                                ],
                                // isRepeatingAnimation: true,
                                repeatForever: true,
                              ),
                              // ScaleTransition(
                              //   scale: _animation,
                              //   child: const Text(
                              //     'Flutter developer | Ai Student | C++',
                              //     style: TextStyleMyApp.textStyle3,
                              //   ),
                              // ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 35),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProjectsMine(
                              num: '+1K',
                              project: 'Linkedin Followers',
                            ),
                            SizedBox(width: 10),
                            ProjectsMine(
                              num: '+4',
                              project: 'Google Play Apps',
                            ),
                            SizedBox(width: 5),
                            ProjectsMine(
                              num: '+80',
                              project: 'Github Repositories',
                            ),
                            SizedBox(width: 5),
                            ProjectsMine(
                              num: '+10',
                              project: 'Gitlab Projects',
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {
                                  if (kIsWeb) {
                                    js.context.callMethod('open', [
                                      'https://linkedin.com/in/ahmadalfrehan'
                                    ]);
                                  }
                                },
                                child: Image.asset(
                                  'assets/images/link.png',
                                  width: 23,
                                  height: 23,
                                  // color: Colors.white,
                                )),
                            const SizedBox(width: 20),
                            InkWell(
                                onTap: () {
                                  if (kIsWeb) {
                                    js.context.callMethod('open', [
                                      'https://play.google.com/store/apps/dev?id=8247791016528345285&hl=it&gl=US'
                                    ]);
                                  }
                                },
                                child: Image.asset(
                                  'assets/images/google-play.png',
                                  width: 23,
                            height: 23,
                            // color: Colors.white,
                          )),
                      const SizedBox(width: 20),
                      InkWell(
                          onTap: () {
                                  if (kIsWeb) {
                                    js.context.callMethod('open',
                                        ['https://facebook.com/ahmadalfrehan']);
                                  }
                                },
                                child: Image.asset(
                                  'assets/images/facebook.png',
                                  width: 23,
                            height: 23,
                            // color: Colors.white,
                          )),
                      const SizedBox(width: 20),
                      InkWell(
                          onTap: () {
                                  if (kIsWeb) {
                                    js.context.callMethod(
                                        'open', ['https://t.me/ahmadalfrehan']);
                                  }
                                },
                                child: Image.asset(
                                  'assets/images/telegram.png',
                                  width: 23,
                            height: 23,
                            // color: Colors.white,
                          )),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          if (kIsWeb) {
                                  js.context.callMethod(
                                      'open', ['https://wa.me/963982867881']);
                                }
                              },
                              child: Image.asset(
                                'assets/images/wa.png',
                                width: 23,
                          height: 23,
                        ),
                      ),
                      const SizedBox(width: 20),
                      // const SizedBox(width: 10),
                      // Image.asset('assets/images/git.png')

                      InkWell(
                          onTap: () {
                                  if (kIsWeb) {
                                    js.context.callMethod('open',
                                        ['https://github.com/ahmadalfrehan']);
                                  }
                                },
                                child: Image.asset(
                                  'assets/images/git.png',
                                  width: 23,
                            height: 23,
                            color: Colors.white,
                          )),
                      const SizedBox(width: 20),
                      InkWell(
                          onTap: () {
                                  if (kIsWeb) {
                                    js.context.callMethod('open',
                                        ['https://gitlab.com/ahmadalfrehan']);
                                  }
                                },
                                child: Image.asset(
                                  'assets/images/gitlab.png',
                                  width: 23,
                                  height: 23,
                                  // color: Colors.white,
                                )),
                          ],
                        ),
                        const SizedBox(height: 40),
                        Obx(
                          () => Row(
                            children: [
                              _titleInRow(
                                'Flutter',
                                () {
                                  controller.selectedTitle.value = 0;
                                },
                                controller.selectedTitle.value == 0,
                              ),
                              const SizedBox(width: 10),
                              _titleInRow('Artificial Intelligence', () {
                                controller.selectedTitle.value = 1;
                              }, controller.selectedTitle.value == 1),
                              const SizedBox(width: 10),
                              _titleInRow('Advice', () {
                                controller.selectedTitle.value = 2;
                              }, controller.selectedTitle.value == 2),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                height:
                          MediaQuery.of(context).size.width <= 480 ? 150 : 400,
                      width:
                          MediaQuery.of(context).size.width <= 480 ? 150 : 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/logo.jpg'),
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  const SizedBox(width: 10),
                  _verticalCircles(),
                ],
        ),
      )
          : Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                                  child: Semantics(
                                    label: 'Welcome to my website!',
                                    child: Text(
                                      'Welcome to my website!',
                                      style: TextStyleMyApp.textStyle1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 7),
                            Row(
                              children: [
                          Expanded(
                                  child: Semantics(
                                    label: 'I\'m Ahmad Al_Frehan',
                                    child: Text(
                                      'I\'m Ahmad Al_Frehan',
                                      style: TextStyleMyApp.textStyle2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                Expanded(
                  child: Container(
                          height: MediaQuery.of(context).size.width <= 480
                              ? 150
                              : 400,
                          width: MediaQuery.of(context).size.width <= 480
                              ? 150
                              : 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.21),
                            spreadRadius: 0,
                            blurRadius: 16,
                            blurStyle: BlurStyle.outer)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/logo.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                _verticalCircles(),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                      Expanded(
                        child: AnimatedTextKit(animatedTexts: [
                          TyperAnimatedText(
                            'Flutter Developer | AI Student | C++',
                            textStyle: TextStyleMyApp.textStyle3,
                          ),
                        ], repeatForever: true),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Divider(color: Colors.white),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectsMine(
                        num: '+1K',
                        project: 'Linkedin Followers',
                      ),
                      SizedBox(width: 2),
                      ProjectsMine(
                        num: '+4',
                        project: 'Google Play Apps',
                      ),
                      SizedBox(width: 5),
                      ProjectsMine(
                        num: '+80',
                        project: 'Github Repositories',
                      ),
                      SizedBox(width: 5),
                      ProjectsMine(
                        num: '+10',
                        project: 'Gitlab Projects',
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            if (kIsWeb) {
                              js.context.callMethod('open',
                                  ['https://linkedin.com/in/ahmadalfrehan']);
                            }
                          },
                          child: Image.asset(
                            'assets/images/link.png',
                            width: 23,
                            height: 23,
                            // color: Colors.white,
                          )),
                      const SizedBox(width: 20),
                      InkWell(
                          onTap: () {
                            if (kIsWeb) {
                              js.context.callMethod('open', [
                                'https://play.google.com/store/apps/dev?id=8247791016528345285&hl=it&gl=US'
                              ]);
                            }
                          },
                          child: Image.asset(
                            'assets/images/google-play.png',
                            width: 23,
                            height: 23,
                      // color: Colors.white,
                    )),
                const SizedBox(width: 20),
                InkWell(
                    onTap: () {
                            if (kIsWeb) {
                              js.context.callMethod('open',
                                  ['https://facebook.com/ahmadalfrehan']);
                            }
                          },
                          child: Image.asset(
                            'assets/images/facebook.png',
                            width: 23,
                      height: 23,
                      // color: Colors.white,
                    )),
                const SizedBox(width: 20),
                InkWell(
                    onTap: () {
                            if (kIsWeb) {
                              js.context.callMethod(
                                  'open', ['https://t.me/ahmadalfrehan']);
                            }
                          },
                          child: Image.asset(
                            'assets/images/telegram.png',
                            width: 23,
                      height: 23,
                      // color: Colors.white,
                    )),

                const SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    if (kIsWeb) {
                      js.context
                          .callMethod('open', ['https://wa.me/963982867881']);
                    }
                  },
                  child: Image.asset(
                    'assets/images/wa.png',
                    width: 23,
                    height: 23,
                  ),
                ),
                const SizedBox(width: 20),

                InkWell(
                    onTap: () {
                            if (kIsWeb) {
                              js.context.callMethod(
                                  'open', ['https://github.com/ahmadalfrehan']);
                            }
                          },
                          child: Image.asset(
                            'assets/images/git.png',
                            width: 23,
                      height: 23,
                      color: Colors.white,
                    )),
                const SizedBox(width: 20),
                InkWell(
                    onTap: () {
                            if (kIsWeb) {
                              js.context.callMethod(
                                  'open', ['https://gitlab.com/ahmadalfrehan']);
                            }
                          },
                          child: Image.asset(
                            'assets/images/gitlab.png',
                            width: 23,
                            height: 23,
                            // color: Colors.white,
                          )),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Obx(
                    () => Row(
                      children: [
                        _titleInRow(
                          'Flutter',
                          () {
                            controller.selectedTitle.value = 0;
                          },
                          controller.selectedTitle.value == 0,
                        ),
                        const SizedBox(width: 10),
                        _titleInRow(
                          'Artificial Intelligence',
                          () {
                            controller.selectedTitle.value = 1;
                          },
                          controller.selectedTitle.value == 1,
                        ),
                        const SizedBox(width: 10),
                        _titleInRow(
                          'Advice',
                          () {
                            controller.selectedTitle.value = 2;
                          },
                          controller.selectedTitle.value == 2,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30)
                ],
              ),
            ),
    );
  }

  _verticalCircles() {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var i = 0; i < 6; ++i) const CircleAvatar(radius: 2),
        ],
      ),
    );
  }

  _titleInRow(String title, Function() onPress, bool isSelected) {
    return Container(
      padding: const EdgeInsets.only(top: 0,bottom: 0,left: 5,right: 5),
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: colorHeadYellow),
            )
          : null,
      child: InkWell(
        onTap: onPress,
        child: Text(
          title,
          style:isSelected
              ?TextStyleMyApp.textStyle31: TextStyleMyApp.textStyle3,
        ),
      ),
    );
  }
}