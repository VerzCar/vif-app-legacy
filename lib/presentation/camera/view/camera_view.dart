import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:vote_your_face/presentation/camera/bloc/camera_bloc.dart';

class CameraView extends StatelessWidget {
  const CameraView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CameraBloc, CameraState>(
      listener: (context, state) {
        if (state is CameraCaptureSuccess) {
          context.router.pop(state.path);
        } else if (state is CameraCaptureFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.error)),
            );
        }
      },
      builder: (context, state) {
        if (state is CameraFailure) {
          return Center(child: Text(state.error));
        }
        if (state is CameraReady) {
          return Scaffold(
              appBar: AppBar(title: const Text("Camera")),
              body: CameraPreview(
                  BlocProvider.of<CameraBloc>(context).getController()),
              floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.camera_alt),
                onPressed: () =>
                    BlocProvider.of<CameraBloc>(context).add(CameraCaptured()),
              ));
        }
        return const Center(
          child: CircularProgressIndicator(
            color: Colors.black,
          ),
        );
      },
    );
  }
}
