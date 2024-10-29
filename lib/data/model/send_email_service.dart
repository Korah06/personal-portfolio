import 'package:dio/dio.dart';

class SendEmailService {
  static Future<bool> sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    const String endpoint = "https://api.emailjs.com/api/v1.0/email/send";

    final res = await Dio().post(
      endpoint,
      data: {
        "service_id": "service_lapimyk",
        "template_id": "template_kngmrho",
        "user_id": "hOPALkJSRCEHU7ERS",
        "template_params": {
          "user_name": name,
          "user_email": email,
          "user_subject": subject,
          "user_message": message,
        },
      },
    );

    if (res.statusCode != 200) {
      return false;
    }
    return true;
  }
}
