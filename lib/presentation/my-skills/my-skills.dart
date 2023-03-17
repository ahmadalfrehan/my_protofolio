import 'package:flutter/material.dart';
import 'package:protofolio/config/style.dart';

import '../../config/textStyle.dart';

class MySkills extends StatelessWidget {
  const MySkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
     //   height: MediaQuery.of(context).size.height / 3,
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
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.4,
                child: GridView.builder(
                    itemCount: 8,
                    clipBehavior: Clip.none,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 220,
                        width: 220,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.snowing),
                            Text(
                              'skill title',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
