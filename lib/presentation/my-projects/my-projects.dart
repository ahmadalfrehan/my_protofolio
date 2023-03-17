import 'package:flutter/material.dart';

import '../../config/style.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: Get.height/4,
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: const [
                  Text(
                    'My Projects',
                    style: TextStyle(
                      color: colorHeadYellow,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: colorHeadYellow,
                      decorationThickness: 5,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'My Projects',
                    style: TextStyle(
                      color: colorDarkBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3.4,
            child: GridView.builder(
                itemCount: 8,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 220,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.paste_rounded),
                        Text(
                          'project title',
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
    );
  }
}
