import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protofolio/config/style.dart';
import 'dart:js' as js;

import '../../config/textStyle.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

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
          _textField('Name', 'type ur name'),
          _textField('Phone', 'type ur phone number'),
          _textField('Email', 'type ur email'),
          _textField('Description', 'type description'),
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
                // js.context.callMethod('open', ['${projectsEntity.url}']);
              },
              child: const Text('Send',style: TextStyle(
                color: colorHead,
                fontWeight: FontWeight.bold
              ),)),
          const SizedBox(height: 20),
          const Text(
            'you can also chat with me or follow me on:',
            style: TextStyle(
                color: colorWhite, fontSize: 15, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              InkWell(
                  onTap: (){
                    js.context.callMethod('open', ['https://linkedin.com/in/ahmadalfrehan']);
                  },
                  child: Image.asset('assets/images/link.png',width: 18,height: 18,color: Colors.white,)),
              const SizedBox(width: 10),
              InkWell(
                  onTap: (){
                    js.context.callMethod('open', ['https://facebook.com/ahmadalfrehan']);
                  },
                  child: const Icon(Icons.facebook, color: colorWhite)),
              const SizedBox(width: 10),
              InkWell(
                  onTap: (){
                    js.context.callMethod('open', ['https://t.me/ahmadalfrehan']);
                  },
                  child: const Icon(Icons.telegram, color: colorWhite)),
              const SizedBox(width: 10),
              // Image.asset('assets/images/git.png')

              InkWell(
                  onTap: (){
                    js.context.callMethod('open', ['https://github.com/in/ahmadalfrehan']);
                  },
                  child: Image.asset('assets/images/git.png',width: 20,height: 20,color: Colors.white,)),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 23),

          if (MediaQuery.of(context).size.width > 480)
            const SizedBox(height: 100),
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

  _textField(String label, String hint) {
    return TextFormField(
      minLines: label=='description'?1:1,
      maxLines: label=='description'?5:1,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(borderSide: BorderSide(color: colorWhite)),
        disabledBorder:
            const UnderlineInputBorder(borderSide: BorderSide(color: colorWhite)),
        focusedBorder:
            const UnderlineInputBorder(borderSide: BorderSide(color: colorWhite)),
        enabledBorder:
            const UnderlineInputBorder(borderSide: BorderSide(color: colorWhite)),
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
