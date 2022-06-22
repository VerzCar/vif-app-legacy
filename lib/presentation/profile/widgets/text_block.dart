import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  const TextBlock({
    Key? key,
    required this.block,
    this.title,
  }) : super(key: key);

  final String block;
  final String? title;

  List<Widget> titleBlock(ThemeData theme) {
    if (title != null) {
      return [
        Text(
          title!,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 10),
      ];
    }
    return [
      const SizedBox(
        width: 0,
        height: 0,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...titleBlock(theme),
        Text(
          block,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
