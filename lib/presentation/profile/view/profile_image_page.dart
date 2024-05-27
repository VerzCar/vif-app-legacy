import 'package:flutter/material.dart';
import 'package:vote_your_face/presentation/shared/widgets/image/imagex.dart';

class ProfileImagePage extends StatelessWidget {
  const ProfileImagePage({
    Key? key,
    required this.imageX,
  }) : super(key: key);

  final ImageX imageX;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        height: double.infinity,
        width: double.infinity,
        child: imageX.image(),
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
