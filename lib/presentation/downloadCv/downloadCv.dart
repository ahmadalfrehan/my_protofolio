import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:js' as js;
import '../../config/style.dart';

class DownloadCv extends StatelessWidget {
  const DownloadCv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: colorHeadYellow,
                fixedSize: Size(Get.width / 1.5, 40)),
            onPressed: () {
              js.context.callMethod('open', ['']);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.download, color: colorHead),
                Text(
                  'View CV',
                  style:
                      TextStyle(color: colorHead, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
