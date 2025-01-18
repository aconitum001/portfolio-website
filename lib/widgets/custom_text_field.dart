import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.validator,
    required this.controller,
  });

  final String hint;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        border: _buildBorder(context),
        enabledBorder: _buildBorder(context),
        focusedBorder: _buildBorder(context),
        errorBorder: _buildErrorBorder(context),
        focusedErrorBorder: _buildErrorBorder(context),
        hintStyle: AppStyles.style16Regular(
          context,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        hintText: hint,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      ),
    );
  }

  InputBorder _buildBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide:
          BorderSide(color: Theme.of(context).colorScheme.primary, width: 1.0),
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
