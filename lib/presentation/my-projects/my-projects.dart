import 'dart:js' as js;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protofolio/presentation/my-projects/details-projects.dart';
import 'package:protofolio/presentation/my-projects/getx/projects-controller.dart';

import '../../config/style.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
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
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.5,
            // height: MediaQuery.of(context).size.height / 3.2,
            child: GridView.builder(
                itemCount: ProjectsController.projectsList.length,
                padding: EdgeInsets.zero,
                // clipBehavior: Clip.none,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // crossAxisCount: 4,
                  crossAxisCount:
                      MediaQuery.of(context).size.width > 480 ? 4 : 3,

                  crossAxisSpacing: 0,
                  // mainAxisExtent: 150,
                  mainAxisExtent:
                      MediaQuery.of(context).size.width > 480 ? 250 : 150,

                  mainAxisSpacing: 0,
                ),
                itemBuilder: (context, index) {
                  return MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DetailsProjects(
                                projectsEntity:
                                ProjectsController.projectsList[index])),
                      );
                    },
                    child: Container(
                        height: 220,
                        width: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.width > 480
                                  ? 150
                                  : 70,
                              width: MediaQuery.of(context).size.width > 480
                                  ? 150
                                  : 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.21),
                                      spreadRadius: 0,
                                      blurRadius: 16,
                                      blurStyle: BlurStyle.outer)
                                ],
                                borderRadius: BorderRadius.circular(12),
                                image: ProjectsController
                                            .projectsList[index].image ==
                                    ''
                                    ? null
                                    : DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(ProjectsController
                                      .projectsList[index].image
                                      .toString()),
                                ),
                              ),
                              child: ProjectsController
                                  .projectsList[index].image ==
                                  ''
                                  ? const FlutterLogo(size: 70)
                                  : null,
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Text(
                                ProjectsController.projectsList[index].name
                                    .toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 13,
                                    color: colorHead,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        )),
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => const AllProjects()));
                  if(kIsWeb)
                    js.context.callMethod('open', ['https://github.com/ahmadalfrehan?tab=repositories']);
                },
                child: const Text('Show more >'),
              ),
            ],
          ),
          if (MediaQuery.of(context).size.width > 480)
            const SizedBox(height: 100),
          Container(
            width: Get.width / 2,
            height: 8,
            decoration: BoxDecoration(
                color: colorHeadYellow, borderRadius: BorderRadius.circular(8)),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
