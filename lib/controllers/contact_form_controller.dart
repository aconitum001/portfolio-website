import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/services/email_service.dart';

class ContactFormController extends GetxController {
  RxBool loading = false.obs;
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController subject = TextEditingController();
  final TextEditingController message = TextEditingController();

  Rx<AutovalidateMode> autovalidateMode = AutovalidateMode.disabled.obs;

  Future<void> sendEmail() async {
    loading.value = true;
    await EmailService.sendEmail(
      name: name.text,
      email: email.text,
      subject: subject.text,
      message: message.text,
    );
    loading.value = false;
  }

  void refreshFields() {
    name.clear();
    email.clear();
    subject.clear();
    message.clear();
  }
}
