import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protofolio/config/style.dart';
import 'package:protofolio/presentation/my-projects/getx/projects-controller.dart';

class DetailsProjects extends StatelessWidget {
  final ProjectsEntity projectsEntity;

  const DetailsProjects({Key? key, required this.projectsEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Details'),
      ),
      body: SizedBox(
        height: Get.height,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (projectsEntity.image == '')
                        const FlutterLogo(size: 70)
                      else
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.21),
                                  spreadRadius: 0,
                                  blurRadius: 16,
                                  blurStyle: BlurStyle.outer)
                            ],
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(projectsEntity.image.toString()),
                            ),
                          ),
                        ),

                      // Image.asset(projectsEntity.image.toString(),fit: BoxFit.fill,),
                      const SizedBox(height: 20),
                      Text(
                        projectsEntity.name.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          color: colorHead,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        projectsEntity.desc.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: colorDarkBlue,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: colorHead,
                    fixedSize: Size(Get.width / 1.1, 50)),
                onPressed: () {
                   js.context.callMethod('open', ['${projectsEntity.url}']);
                },
                child: const Text('View')),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
