import 'package:flutter/material.dart';
import 'package:protofolio/config/style.dart';
import '../../config/about.dart';
import '../../config/textStyle.dart';

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorHead,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Hi,',
                        style: TextStyleMyApp.textStyle1,
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'I am Ahmad',
                        style: TextStyleMyApp.textStyle2,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          about,
                          style: TextStyleMyApp.textStyle3,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _projectsMine(),
                      _projectsMine(),
                      _projectsMine(),
                    ],
                  ),
                  const SizedBox(height: 50)
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 200,
                width: 200,
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
            _verticalCirlces(),
          ],
        ),
      ),
    );
  }

  _verticalCirlces() {
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

  _projectsMine() {
    return Column(
      children: const [
        Text(
          '22',
          style: TextStyleMyApp.textStyle4,
        ),
        Text(
          'project',
          style: TextStyleMyApp.textStyle3,
        ),
      ],
    );
  }
}
