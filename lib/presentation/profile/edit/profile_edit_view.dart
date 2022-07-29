import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';
import 'package:vote_your_face/presentation/profile/edit/cubit/profile_edit_cubit.dart';
import 'package:vote_your_face/presentation/profile/edit/profile_edit_form.dart';

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
        child: ProfileEditForm(profile: user.profile),
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
    return AppBar(
      leading: BlocBuilder<ProfileEditCubit, ProfileEditState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          return TextButton(
            key: const Key('profileEditForm_closeButton'),
            onPressed: () {
              context.read<ProfileEditCubit>().stateRecycled();
              context.router.pop();
            },
            child: const Text("close"),
          );
        },
      ),
      actions: [
        _SubmitButton(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ProfileEditCubit, ProfileEditState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return TextButton(
          key: const Key('profileEditForm_submitButton'),
          onPressed: () => context.read<ProfileEditCubit>().formSubmitted(),
          style: TextButton.styleFrom(primary: theme.colorScheme.secondary),
          child: const Text("save"),
        );
      },
    );
  }
}
