import 'dart:html' as html;

class ContactUsController {
  String? name;
  String? phone;
  String? email;
  String? desc;

  ContactUsController({
    required this.name,
    required this.phone,
    required this.email,
    required this.desc,
  });

  void sendEmail() {
    String recipient = 'ahmadalfrehan@gmail.com';
    String subject = '$name';
    String body = 'NAME:$name phone:$phone email:$email desc:$desc';

    String url =
        'mailto:$recipient?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}';
    html.window.open(url, '_blank');
  }
}
