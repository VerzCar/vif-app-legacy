import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_your_face/application/authentication/bloc/authentication_bloc.dart';
import 'package:vote_your_face/application/user/bloc/user_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Builder(
              builder: (context) {
                final status = context.select(
                  (AuthenticationBloc bloc) => bloc.state.status,
                );
                final user = context.select(
                  (UserBloc bloc) => bloc.state.user,
                );
                return Column(
                  children: [
                    Text('User status: $status'),
                    Text('User id: ${user?.id}'),
                    Text('User username: ${user?.username}'),
                    Text('User gender: ${user?.gender}'),
                  ],
                );
              },
            ),
            ElevatedButton(
              child: const Text('Logout'),
              onPressed: () {
                context
                    .read<AuthenticationBloc>()
                    .add(AuthenticationLogoutRequested());
              },
            ),
          ],
        ),
      ),
    );
  }
}
