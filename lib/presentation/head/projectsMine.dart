import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../config/textStyle.dart';

class ProjectsMine extends StatelessWidget {
  final String ?num;
  final String ?project;

  const ProjectsMine({this.num, this.project, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            num ?? '',
            style: TextStyleMyApp.textStyle4,
          ),
          MediaQuery.of(context).size.width > 480
              ? Semantics(
                  label: project ?? '',
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(project ?? '',
                          textStyle: TextStyleMyApp.textStyle3)
                    ],
                    isRepeatingAnimation: false,
                  ),
                )
              : Semantics(
                  label: project ?? '',
                  child: Text(project ?? '', style: TextStyleMyApp.textStyle3)),
        ],
      ),
    );
  }
}
