import 'dart:io';
import 'dart:js' as js;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protofolio/config/style.dart';

import '../../config/textStyle.dart';
import 'controller.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController desc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: colorDarkBlue,
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: const [
                  Text(
                    'Contact me',
                    style: TextStyleMyApp.textStyle7,
                  ),
                  Text(
                    'Contact me',
                    style: TextStyleMyApp.textStyle10,
                  ),
                ],
              ),
            ],
          ),
          _textField('Name', 'type ur name', name),
          _textField('Phone', 'type ur phone number', phone),
          _textField('Email', 'type ur email', email),
          _textField('Description', 'type description', desc),
          // _textField('Name', 'type ur name'),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: colorHeadYellow,
                  fixedSize: Size(Get.width / 1.5, 40)),
              onPressed: () {
                ContactUsController cont = ContactUsController(
                    name: name.text,
                    phone: phone.text,
                    email: email.text,
                    desc: desc.text);
                cont.sendEmail();
                // js.context.callMethod('open', ['${projectsEntity.url}']);
              },
              child: const Text(
                'Send',
                style: TextStyle(color: colorHead, fontWeight: FontWeight.bold),
              )),
          const SizedBox(height: 20),
          const Text(
            'you can also chat with me any where you want :',
            style: TextStyle(
                color: colorWhite, fontSize: 15, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    if (kIsWeb) {
                      js.context.callMethod(
                          'open', ['https://linkedin.com/in/ahmadalfrehan']);
                    }
                  },
                  child: Image.asset(
                    'assets/images/link.png',
                    width: 23,
                    height: 23,
                    // color: Colors.white,
                  )),
              const SizedBox(width: 10),
              InkWell(
                  onTap: () {
                    if (kIsWeb) {
                      js.context.callMethod(
                          'open', ['https://m.me/ahmadalfrehan']);
                    }
                  },
                  child: Image.asset(
                    'assets/images/facebook.png',
                    width: 23,
                    height: 23,
                  )),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {
                  if (kIsWeb) {
                    js.context
                        .callMethod('open', ['https://t.me/ahmadalfrehan']);
                  }
                },
                child: Image.asset(
                  'assets/images/telegram.png',
                  width: 23,
                  height: 23,
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {
                  if (kIsWeb) {
                    js.context
                        .callMethod('open', ['https://wa.me/963982867881']);
                  }
                },
                child: Image.asset(
                  'assets/images/wa.png',
                  width: 23,
                  height: 23,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 23),

          if (MediaQuery.of(context).size.width > 480)
            const SizedBox(height: 20),
          Container(
            width: Get.width / 1.5,
            height: 8,
            decoration: BoxDecoration(
                color: colorHeadYellow, borderRadius: BorderRadius.circular(8)),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  _textField(
      String label, String hint, TextEditingController textEditingController) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      controller: textEditingController,
      minLines: label == 'description' ? 1 : 1,
      maxLines: label == 'description' ? 5 : 1,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(
            borderSide: BorderSide(color: colorWhite)),
        disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: colorWhite)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: colorWhite)),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: colorWhite)),
        label: Text(
          label,
          style: const TextStyle(
              color: colorWhite, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        hintText: hint,

        hintStyle: const TextStyle(
            color: colorWhite, fontSize: 12, fontWeight: FontWeight.w400),
      ),
    );
  }
}
