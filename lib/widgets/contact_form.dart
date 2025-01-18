import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:portfolio/services/email_service.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/custom_text_field.dart';
import 'package:portfolio/widgets/loading_button.dart';
import 'package:portfolio/widgets/mail_text_field.dart';
import 'package:portfolio/widgets/social_media_row.dart';

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
}

class ContactForm extends StatelessWidget {
  ContactForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey();

  final ContactFormController contactFormController =
      Get.put(ContactFormController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Form(
        key: formKey,
        autovalidateMode: contactFormController.autovalidateMode.value,
        child: Column(
          children: [
            CustomTextField(
              hint: "Your name",
              controller: contactFormController.name,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your name";
                }
                if (value.length < 3) {
                  return "Name must be at least 3 characters long";
                }
                return null;
              },
            ),
            const Gap(20),
            CustomTextField(
              hint: "Email",
              controller: contactFormController.email,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your email";
                }
                final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                if (!emailRegex.hasMatch(value)) {
                  return "Please enter a valid email address";
                }
                return null;
              },
            ),
            const Gap(20),
            CustomTextField(
              hint: "Subject",
              controller: contactFormController.subject,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a subject";
                }
                return null;
              },
            ),
            const Gap(20),
            MailTextField(
              hint: "How can I help?*",
              controller: contactFormController.message,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a message";
                }
                if (value.length < 10) {
                  return "Message must be at least 10 characters long";
                }
                return null;
              },
            ),
            const Gap(20),
            Row(
              children: [
                SizedBox(
                  height: 56,
                  child: contactFormController.loading.value
                      ? const LoadingButton()
                      : CustomButton(
                          text: "Get in Touch",
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              await contactFormController.sendEmail();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Email sent successfully!'),
                                ),
                              );
                              contactFormController.autovalidateMode.value =
                                  AutovalidateMode.disabled;
                            } else {
                              contactFormController.autovalidateMode.value =
                                  AutovalidateMode.always;
                            }
                          },
                        ),
                ),
                const Gap(24),
                const SocialMediaRow(
                  gap: 24,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
