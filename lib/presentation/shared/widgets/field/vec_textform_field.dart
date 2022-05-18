import 'package:flutter/material.dart';

class VecTextFormField extends StatelessWidget {
  final Function(String) onChanged;
  final String labelText;
  final String errorText;
  final bool showError;
  final TextInputType keyboardType;
  final Icon? icon;

  const VecTextFormField({
    Key? key,
    required this.onChanged,
    this.labelText = '',
    this.errorText = '',
    this.showError = false,
    this.keyboardType = TextInputType.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      onChanged: onChanged,
      obscureText: true,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(),
        border: const OutlineInputBorder(),
        labelText: labelText,
        errorText: showError ? errorText : null,
        icon: icon,
      ),
    );
  }
}
