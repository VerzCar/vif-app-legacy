import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_repository/user_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vote_your_face/presentation/profile/widgets/multiline_textform_field.dart';
import 'package:vote_your_face/presentation/profile/widgets/profile_image.dart';
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
      appBar: _AppBar(username: user.username),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OutlinedButton(
                  onPressed: () => {},
                  child: Text("edit"),
                ),
              ],
            ),
            MultiLineTextFormField(
              label: 'Why vote me',
              initialValue: user.bio.description,
            ),
            const SizedBox(height: 20),
            MultiLineTextFormField(
              label: 'Biographie',
              initialValue: user.bio.description,
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
    required this.username,
  }) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        username,
      ),
      centerTitle: false,
      actions: [
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
