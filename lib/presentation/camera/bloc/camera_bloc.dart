import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:equatable/equatable.dart';

import 'camera_utils.dart';

part 'camera_event.dart';

part 'camera_state.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  CameraBloc() : super(CameraInitial()) {
    on<CameraInitialized>(_onCameraInitialized);
    on<CameraCaptured>(_onCameraCaptured);
    on<CameraStopped>(_onCameraStopped);
  }

  final CameraUtils _cameraUtils = CameraUtils();
  final ResolutionPreset _resolutionPreset = ResolutionPreset.high;
  final CameraLensDirection _cameraLensDirection = CameraLensDirection.back;

  late CameraController _controller;

  CameraController getController() => _controller;

  bool isInitialized() => _controller.value.isInitialized;

  void _onCameraInitialized(
    CameraInitialized event,
    Emitter<CameraState> emit,
  ) async {
    try {
      _controller = await _cameraUtils.cameraController(
        _resolutionPreset,
        _cameraLensDirection,
      );
      await _controller.initialize();
      emit(CameraReady());
    } on CameraException catch (error) {
      _controller.dispose();
      emit(CameraFailure(error: error.description ?? ''));
    } catch (error) {
      emit(CameraFailure(error: error.toString()));
    }
  }

  void _onCameraCaptured(
    CameraCaptured event,
    Emitter<CameraState> emit,
  ) async {
    if (state is CameraReady) {
      emit(CameraCaptureInProgress());
      try {
        final path = await _cameraUtils.path();
        await _controller.takePicture();
        emit(CameraCaptureSuccess(path));
      } on CameraException catch (error) {
        emit(CameraCaptureFailure(error: error.description ?? ''));
      }
    }
  }

  void _onCameraStopped(
    CameraStopped event,
    Emitter<CameraState> emit,
  ) async {
    _controller.dispose();
    emit(CameraInitial());
  }

  @override
  Future<void> close() {
    _controller.dispose();
    return super.close();
  }
}
