import 'package:flutter/material.dart';
import 'package:protofolio/config/style.dart';

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
          _textField('phone', 'type ur phone number'),
          _textField('email', 'type ur email'),
          _textField('description', 'type description'),
          // _textField('Name', 'type ur name'),
          const SizedBox(height: 20),
          const Text(
            'you can also chat with me anywhere you want',
            style: TextStyle(
                color: colorWhite, fontSize: 15, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  _textField(String label, String hint) {
    return TextFormField(
      minLines: label=='description'?4:1,
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
