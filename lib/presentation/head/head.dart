import 'package:flutter/material.dart';
import 'package:protofolio/config/style.dart';

import '../../config/textStyle.dart';

class Head extends StatefulWidget {
  const Head({Key? key}) : super(key: key);

  @override
  State<Head> createState() => _HeadState();
}

class _HeadState extends State<Head> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 10),
        reverseDuration: const Duration(seconds: 5))
      ..repeat();
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceInOut,
    );
  }

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
                              'Hi,',
                              style: TextStyleMyApp.textStyle1,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'I am Ahmad Al_Frehan',
                                style: TextStyleMyApp.textStyle2,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: ScaleTransition(
                                scale: _animation,
                                child: const Text(
                                  'Flutter developer at Future Code | Ai Student at faculty of informatics engineering | c++',
                                  style: TextStyleMyApp.textStyle3,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _projectsMine(
                                num: '+3', project: 'Apps on Google Play'),
                            const SizedBox(width: 10),
                            _projectsMine(
                                num: '+60', project: 'Repositories n GitHub'),
                            const SizedBox(width: 10),
                            _projectsMine(
                                num: '+10', project: 'Private projects'),
                          ],
                        ),
                        const SizedBox(height: 50)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height:
                          MediaQuery.of(context).size.width <= 480 ? 150 : 400,
                      width:
                          MediaQuery.of(context).size.width <= 480 ? 150 : 400,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/ahmad.jpg'),
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                      //  child: Text('Ahmad',style:TextStyleMyApp.textStyle1,),
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
                                Text(
                                  'Hi,',
                                  style: TextStyleMyApp.textStyle1,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Ahmad Al_Frehan',
                                    style: TextStyleMyApp.textStyle2,
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
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/ahmad.jpg'),
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
                        child: ScaleTransition(
                          scale: _animation,
                          child: const Text(
                            'Flutter developer at Future Code | Ai Student at faculty of informatics engineering | c++',
                            style: TextStyleMyApp.textStyle3,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _projectsMine(num: '+3', project: 'Apps on Google Play'),
                      const SizedBox(width: 10),
                      _projectsMine(
                          num: '+60', project: 'Repositories on GitHub'),
                      const SizedBox(width: 10),
                      _projectsMine(num: '+10', project: 'Private projects'),
                    ],
                  ),
                  const SizedBox(height: 50)
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

  _projectsMine({String? num, String? project}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            num ?? '',
            style: TextStyleMyApp.textStyle4,
          ),
          Text(
            project ?? '',
            style: TextStyleMyApp.textStyle3,
          ),
        ],
      ),
    );
  }
}
