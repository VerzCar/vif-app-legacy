import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_your_face/presentation/profile/bloc/profile_bloc.dart';
import 'package:vote_your_face/presentation/profile/view/profile_populated.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          switch (state.status) {
            case ProfileStatus.initial:
              return const Text("initial profile");
            case ProfileStatus.loading:
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              );
            case ProfileStatus.success:
              final user = state.user;
              return ProfilePopulated(user: user);
            case ProfileStatus.failure:
            default:
              return const Center(child: Text("profile error state"));
          }
        },
      ),
    );
  }
}
