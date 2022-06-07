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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
          child: Chip(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            label: Text('Circle:'),
          ),
        ),
        const SizedBox(width: 10),
        Flexible(
          flex: 2,
          child: TextField(
            decoration: InputDecoration(
              labelText: circleName,
              suffixIcon: const Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ),
      ],
    );
  }
}
