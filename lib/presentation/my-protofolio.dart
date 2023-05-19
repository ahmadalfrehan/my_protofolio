import 'package:flutter/material.dart';
import 'package:protofolio/presentation/contact-us/contact-us.dart';
import 'package:protofolio/presentation/my-certificate/my-certificate.dart';
import 'package:protofolio/presentation/my-projects/my-projects.dart';

import 'about-me.dart';
import 'education/education.dart';
import 'head/head.dart';
import 'my-experience/my-experenece.dart';
import 'my-skills/my-skills.dart';

class MyProtofolio extends StatefulWidget {
  const MyProtofolio({Key? key}) : super(key: key);

  @override
  State<MyProtofolio> createState() => _MyProtofolioState();
}

class _MyProtofolioState extends State<MyProtofolio> {

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: const [
            Head(),
            AboutMe(),
            MyExperience(),
            SizedBox(height: 20),
            Education(),
            MyCertificate(),
            MyProjects(),
            MySkills(),
            SizedBox(height: 20),
            ContactUs(),
          ],
        ),
      ),
    );
  }
}
