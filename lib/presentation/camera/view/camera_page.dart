import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_your_face/injection.dart';
import 'package:vote_your_face/presentation/camera/bloc/camera_bloc.dart';
import 'package:vote_your_face/presentation/camera/view/view.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CameraBloc>(
      create: (BuildContext context) =>
          sl<CameraBloc>()..add(CameraInitialized()),
      child: const CameraView(),
    );
  }
}
