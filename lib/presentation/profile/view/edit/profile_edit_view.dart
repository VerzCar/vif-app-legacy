import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:user_repository/user_repository.dart';
import 'package:vote_your_face/presentation/profile/widgets/multiline_textform_field.dart';
import 'package:vote_your_face/presentation/profile/widgets/profile_image.dart';

class ProfileEditView extends StatelessWidget {
  const ProfileEditView({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ProfileImage(
                  isEditable: true,
                ),
              ],
            ),
            const SizedBox(height: 10),
            MultiLineTextFormField(
              label: 'Why vote me',
              initialValue: user.bio.description,
              helperText: 'max. 200',
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      leading: TextButton(
        onPressed: () {
          context.router.pop();
        },
        child: const Text("close"),
      ),
      actions: [
        TextButton(
          onPressed: () => {},
          child: const Text("save"),
          style: TextButton.styleFrom(primary: theme.colorScheme.secondary),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
