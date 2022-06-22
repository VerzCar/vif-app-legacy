import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';
import 'package:vote_your_face/presentation/profile/cubit/profile_cubit.dart';
import 'package:vote_your_face/injection.dart';
import 'package:vote_your_face/presentation/profile/view/edit/profile_edit_view.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileCubit>(
      create: (BuildContext context) => sl<ProfileCubit>()..fetchUser(),
      child: ProfileEditView(user: user),
    );
  }
}
