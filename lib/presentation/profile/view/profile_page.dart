import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_your_face/presentation/profile/cubit/profile_cubit.dart';
import 'package:vote_your_face/presentation/profile/view/profile_view.dart';
import 'package:vote_your_face/injection.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileCubit>(
      create: (BuildContext context) => sl<ProfileCubit>()..fetchUser(),
      child: const ProfileView(),
    );
  }
}
