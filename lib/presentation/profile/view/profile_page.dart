import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_your_face/presentation/profile/bloc/profile_bloc.dart';
import 'package:vote_your_face/presentation/profile/view/profile_view.dart';
import 'package:vote_your_face/injection.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (BuildContext context) => sl<ProfileBloc>()..add(ProfileUserRequested()),
      child: const ProfileView(),
    );
  }
}
