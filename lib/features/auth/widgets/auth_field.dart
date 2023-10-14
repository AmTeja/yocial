import 'package:flutter/material.dart';

/// A field used in the auth views.

class AuthField extends StatelessWidget {
  /// Creates an [AuthField].
  const AuthField({
    required this.controller,
    required this.hintText,
    super.key,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  });

  /// The [TextEditingController] of the field.
  final TextEditingController controller;

  /// The hint text of the field.
  final String hintText;

  /// Whether the field should obscure the text.
  final bool obscureText;

  /// Type of keyboard
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        hintText: hintText,
      ),
      obscureText: obscureText,
    );
  }
}
