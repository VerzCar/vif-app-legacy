import 'package:flutter/material.dart';

class ProfileImagePage extends StatelessWidget {
  const ProfileImagePage({
    Key? key,
    required this.imageSrc,
  }) : super(key: key);

  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _AppBar(),
      body: Container(
        padding: const EdgeInsets.all(5),
        height: double.infinity,
        width: double.infinity,
        child: Image.network(
          imageSrc,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
