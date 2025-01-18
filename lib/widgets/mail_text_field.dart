import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';

class MailTextField extends StatelessWidget {
  const MailTextField({
    super.key,
    this.validator,
    required this.hint,
    required this.controller,
  });

  final String? Function(String?)? validator;
  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TextFormField(
        maxLines: null,
        controller: controller,
        expands: true,
        validator: validator,
        keyboardType: TextInputType.multiline,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppStyles.style16Regular(
            context,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
          border: _buildBorder(context),
          enabledBorder: _buildBorder(context),
          focusedBorder: _buildBorder(context),
          errorBorder: _buildErrorBorder(context),
          focusedErrorBorder: _buildErrorBorder(context),
        ),
      ),
    );
  }

  InputBorder _buildBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }

  InputBorder _buildErrorBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide:
          BorderSide(color: Theme.of(context).colorScheme.error, width: 1.0),
    );
  }
}
