import 'package:flutter/material.dart';

class CircleSelection extends StatelessWidget {
  const CircleSelection({
    Key? key,
    required this.circleName,
  }) : super(key: key);

  final String circleName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Chip(
          padding: EdgeInsets.all(10),
          label: Text('Circle:'),
        ),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(),
              border: const OutlineInputBorder(),
              labelText: circleName,
              suffixIcon: const Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ),
      ],
    );
  }
}
