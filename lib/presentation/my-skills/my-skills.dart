import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:protofolio/config/about.dart';
import 'package:protofolio/config/debug/screen-stability.dart';
import 'package:protofolio/config/style.dart';

import '../../config/textStyle.dart';

class MySkills extends StatefulWidget {
  const MySkills({Key? key}) : super(key: key);

  @override
  State<MySkills> createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: double.infinity,
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: colorDarkBlue),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
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
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                      itemCount: mySkills.length,
                      clipBehavior: Clip.none,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            MediaQuery.of(context).size.width > 480 ? 4 : 3,
                        crossAxisSpacing: 30,
                        mainAxisExtent:
                            MediaQuery.of(context).size.width > 480 ? 150 : 100,
                        mainAxisSpacing: 5,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AnimatedBuilder(
                              animation: _controller,
                              builder: (_, child) {
                                return Transform.rotate(
                                  angle: _controller.value * 2 * math.pi,
                                  child: child,
                                );
                              },
                              child: Image.asset(
                                'assets/images/skills.png',
                                width: MediaQuery.of(context).size.width > 480
                                    ? 90
                                    : 40,
                                height: MediaQuery.of(context).size.width > 480
                                    ? 90
                                    : 40,
                              ),
                            ),
                            SizedBox(height: ScreenStability.height(10)),
                            Expanded(
                              child: Text(
                                mySkills[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize:
                                  MediaQuery.of(context).size.width > 480
                                          ? 20
                                          : 13,
                                  color: colorWhite,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
