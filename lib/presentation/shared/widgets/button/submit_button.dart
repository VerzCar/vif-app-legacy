import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String submitText;
  final VoidCallback onPressed;
  final bool isDisabled;
  final bool isLoading;

  const SubmitButton({
    Key? key,
    required this.submitText,
    required this.onPressed,
    this.isDisabled = false,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return isLoading
        ? const CircularProgressIndicator()
        : SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              key: key,
              onPressed: isDisabled ? null : onPressed,
              child: Text(submitText),
            ),
          );
  }
}
