import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vote_circle_repository/vote_circle_repository.dart';
import 'package:vote_your_face/presentation/circle_detail/bloc/circle_detail_bloc.dart';
import 'package:vote_your_face/presentation/circle_detail/circle_detail.dart';
import 'package:vote_your_face/presentation/circle_detail/widgets/voter_card.dart';

class CircleDetailView extends StatelessWidget {
  const CircleDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<CircleDetailBloc, CircleDetailState>(
        listener: (context, state) {
          if (state.status.isFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                const SnackBar(content: Text('Circle load Failure')),
              );
          }
        },
        builder: (context, state) {
          switch (state.status) {
            case CircleDetailStatus.initial:
              return const Text("initial circle");
            case CircleDetailStatus.loading:
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              );
            case CircleDetailStatus.success:
              return CircleDetailViewPopulated(
                circle: state.circle,
              );
            default:
              return const Text("circle default state");
          }
        },
      ),
    );
  }
}

class CircleDetailViewPopulated extends StatelessWidget {
  const CircleDetailViewPopulated({Key? key, required Circle circle})
      : _circle = circle,
        super(key: key);

  final Circle _circle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Voters: " + _circle.voters.length.toString(),
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: CircleSelection(
              circleName: _circle.name,
            ),
          ),
          const SizedBox(height: 30),
          SafeArea(
            child: CustomScrollView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(20),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return VoterCard(username: _circle.voters[index].voter);
                    }, childCount: _circle.voters.length),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
