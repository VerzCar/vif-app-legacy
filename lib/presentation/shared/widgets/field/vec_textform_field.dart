import 'package:flutter/material.dart';

class VecTextFormField extends StatelessWidget {
  const VecTextFormField({
    Key? key,
    required this.onChanged,
    this.labelText = '',
    this.errorText = '',
    this.showError = false,
    this.keyboardType = TextInputType.text,
    this.initialValue = '',
    this.minLines,
    this.maxLines,
    this.helperText,
    this.obscureText = false,
    this.icon,
  }) : super(key: key);

  final Function(String) onChanged;
  final String labelText;
  final String errorText;
  final bool showError;
  final TextInputType keyboardType;
  final String initialValue;
  final int? minLines;
  final int? maxLines;
  final String? helperText;
  final bool obscureText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      initialValue: initialValue,
      minLines: minLines,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(),
        border: const OutlineInputBorder(),
        labelText: labelText,
        errorText: showError ? errorText : null,
        icon: icon,
        helperText: helperText,
      ),
    );
  }
}
