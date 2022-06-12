import 'package:flutter/material.dart';

class MultiLineTextFormField extends StatelessWidget {
  const MultiLineTextFormField({
    Key? key,
    required this.label,
    this.initialValue = '',
    this.readOnly = true,
  }) : super(key: key);

  final String label;
  final String initialValue;
  final bool readOnly;

  InputDecoration decoration() {
    if (readOnly) {
      return const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        contentPadding: EdgeInsets.fromLTRB(5, 5, 0, 5),
        filled: true
      );
    }
    return const InputDecoration(
      border: OutlineInputBorder(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 10),
        //Text(placeholder),
        TextFormField(
          initialValue: initialValue,
          decoration: decoration(),
          readOnly: readOnly,
          minLines: 5,
          maxLines: 30,
        )
      ],
    );
  }
}
