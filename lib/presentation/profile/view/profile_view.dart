import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_your_face/presentation/profile/cubit/profile_cubit.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<ProfileCubit, ProfileState>(
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
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(user.username),
                        const Icon(Icons.settings),
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    SizedBox(
                      height: 160,
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://randomuser.me/api/portraits/men/' +
                              16.toString() +
                              '.jpg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    ListTile(
                      title: const Text("Biographie"),
                      subtitle: Text(user.bio.description),
                    )
                  ],
                ),
              );
            case ProfileStatus.failure:
            default:
              return const Center(child: Text("profile error state"));
          }
        },
      ),
    );
  }
}
