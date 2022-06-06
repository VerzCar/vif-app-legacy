import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_your_face/injection.dart';
import 'package:vote_your_face/presentation/circle_detail/bloc/circle_detail_bloc.dart';
import 'package:vote_your_face/presentation/circle_detail/view/circle_detail_view.dart';

class CircleDetailPage extends StatelessWidget {
  const CircleDetailPage({Key? key, @pathParam required this.id})
      : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CircleDetailBloc>(
      create: (BuildContext context) =>
          sl<CircleDetailBloc>()..add(const CircleDetailStarted(34)),
      child: const CircleDetailView(),
    );
  }
}
