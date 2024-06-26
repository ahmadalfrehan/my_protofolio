import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protofolio/config/textStyle.dart';

import '../config/about.dart';
import 'head/getx/headcontroller.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> with SingleTickerProviderStateMixin {
  // late final AnimationController _controller =
  //     AnimationController(vsync: this, duration: const Duration(seconds: 3))
  //       ..repeat();
  AnimationController? _controller;
  Animation<double>? animation;

  final controller = Get.put(HeadController());
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 8),
      vsync: this,
    );
    final curved = CurvedAnimation(
      parent: _controller as Animation<double>,
      curve: Curves.bounceInOut,
      reverseCurve: Curves.easeInOut,
    );
    animation = Tween<double>(begin: 0, end: 2 * math.pi).animate(curved)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller!.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller!.forward();
        }
      });
    _controller!.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                const Row(
                  children: [
                    Stack(
                      children: [
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
                  children: [
                    Expanded(
                      child: Semantics(
                        label: about,
                        child: Obx(
                          () => SelectableText(
                            // animatedTexts: [
                            //   TyperAnimatedText(
                            controller.selectedTitle.value == 0
                                ? about
                                : aboutAI,
                            style: TextStyleMyApp.textStyle6,
                          ),
                        ),
                      ),
                      // ],
                      // isRepeatingAnimation: false,
                    ),
                    // ),
                    // ),
                    Transform.rotate(
                      angle: animation!.value,
                      child: Container(
                        height:
                            MediaQuery.of(context).size.width > 480 ? 200 : 90,
                        width:
                            MediaQuery.of(context).size.width > 480 ? 200 : 90,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/code.png'),
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
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
}
