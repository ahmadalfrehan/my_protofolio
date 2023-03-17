import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:protofolio/config/textStyle.dart';

import '../config/about.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat();

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
                  children: [
                    const Expanded(
                      child: Text(
                        about,
                        style: TextStyleMyApp.textStyle6,
                      ),
                    ),
                    AnimatedBuilder(
                      animation: _controller,
                      builder: (_, child) {
                        return Transform.rotate(
                          angle: _controller.value * 2 * math.pi,
                          child: child,
                        );
                      },
                      child: Container(
                        height:
                            MediaQuery.of(context).size.width > 480 ? 200 : 80,
                        width:
                            MediaQuery.of(context).size.width > 480 ? 200 : 80,
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
