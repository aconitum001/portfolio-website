import 'dart:convert';

import 'package:http/http.dart' as http;

class EmailService {
  static sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    var endPointUrl = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    try {
      var response = await http.post(
        endPointUrl,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': 'service_233nn3d',
          'template_id': 'template_w74zpka',
          'user_id': 'AsVaLgFIunLq1C1I7',
          'template_params': {
            'user_name': name,
            'user_email': email,
            'user_subject': subject,
            'user_message': message,
          }
        }),
      );

      if (response.statusCode == 200) {
        print(response.body);
      }
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
