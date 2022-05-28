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
                final userId = context.select(
                  (AuthenticationBloc bloc) => bloc.state.user.id,
                );
                final metaUser = context.select(
                  (UserBloc bloc) => bloc.state.metaUser,
                );
                return Column(
                  children: [
                    Text('UserID: $userId'),
                    Text('Meta User id: ${metaUser?.id}'),
                    Text('Meta User username: ${metaUser?.username}'),
                    Text('Meta User gender: ${metaUser?.gender}'),
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
