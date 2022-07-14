import 'package:flutter/material.dart';
import 'package:vote_your_face/presentation/shared.dart';

class MultiLineTextFormField extends StatelessWidget {
  const MultiLineTextFormField({
    Key? key,
    required this.label,
    this.initialValue = '',
    this.helperText,
  }) : super(key: key);

  final String label;
  final String initialValue;
  final String? helperText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 10),
        VecTextFormField(
          onChanged: (value) => {},
          initialValue: initialValue,
          minLines: 5,
          maxLines: 30,
        ),
      ],
    );
  }
}
