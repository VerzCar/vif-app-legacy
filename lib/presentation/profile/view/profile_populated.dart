import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vote_your_face/presentation/profile/widgets/profile_image.dart';
import 'package:vote_your_face/presentation/profile/widgets/text_block.dart';
import 'package:vote_your_face/presentation/routes/router.dart';

class ProfilePopulated extends StatelessWidget {
  const ProfilePopulated({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(user: user),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ProfileImage(),
              ],
            ),
            const SizedBox(height: 10),
            TextBlock(
              title: 'Why vote me',
              block: user.bio.description,
            ),
            const SizedBox(height: 20),
            TextBlock(
              title: 'Biographie',
              block: user.bio.description,
            ),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        user.username,
      ),
      centerTitle: false,
      actions: [
        TextButton(
          onPressed: () {
            context.router.push(ProfileEditRoute(user: user));
          },
          child: const Text("edit"),
        ),
        IconButton(
          icon: const Icon(
            Icons.settings,
          ),
          onPressed: () {
            context.router.push(const SettingsRoute());
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
