import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protofolio/presentation/contact-us/contact-us.dart';
import 'package:protofolio/presentation/downloadCv/downloadCv.dart';
import 'package:protofolio/presentation/my-certificate/my-certificate.dart';
import 'package:protofolio/presentation/my-projects/my-projects.dart';

import 'about-me.dart';
import 'education/education.dart';
import 'head/getx/headcontroller.dart';
import 'head/head.dart';
import 'my-experience/my-experenece.dart';
import 'my-skills/my-skills.dart';

class MyProtofolio extends StatelessWidget {
  MyProtofolio({Key? key}) : super(key: key);

  final controller = Get.put(HeadController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => controller.selectedTitle.value == 0
          ? CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index == 0) {
                        return Head();
                      } else if (index == 1) {
                        return const AboutMe();
                      } else if (index == 2) {
                        return MyExperience();
                      } else if (index == 3) {
                  return const SizedBox(height: 20);
                } else if (index == 4) {
                  return const Education();
                } else if (index == 5) {
                  return const MyCertificate();
                } else if (index == 6) {
                  return  MyProjects();
                } else if (index == 7) {
                  return const MySkills();
                } else if (index == 8) {
                  return const DownloadCv();
                } else if (index == 9) {
                  return const SizedBox(height: 20);
                } else if (index == 10) {
                  return const ContactUs();
                } else {
                  return null;
                }
              },
              childCount: 11, // Adjust the count based on the number of widgets
            ),
          ),
        ],
            )
          : CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      if (index == 0) {
                        return Head();
                      } else if (index == 1) {
                        return const AboutMe();
                      } else if (index == 2) {
                        return MyExperience();
                      } else if (index == 3) {
                        return const SizedBox(height: 20);
                      } else if (index == 4) {
                        return const Education();
                      } else if (index == 5) {
                        return const MyCertificate();
                      } else if (index == 6) {
                        return  MyProjects();
                      } else if (index == 7) {
                        return const MySkills();
                      } else if (index == 8) {
                        return const DownloadCv();
                      } else if (index == 9) {
                        return const SizedBox(height: 20);
                      } else if (index == 10) {
                        return const ContactUs();
                      } else {
                        return null;
                      }
                    },
                  childCount:
                  11, // Adjust the count based on the number of widgets
                ),
              ),
            ],
          ),
        )
      // SingleChildScrollView(
      //   child: Column(
      //     children: const [
      //       Head(),
      //       AboutMe(),
      //       MyExperience(),
      //       SizedBox(height: 20),
      //       Education(),
      //       MyCertificate(),
      //       MyProjects(),
      //       MySkills(),
      //       DownloadCv(),
      //       SizedBox(height: 20),
      //       ContactUs(),
      //     ],
      //   ),
      // ),
    );
  }
}
