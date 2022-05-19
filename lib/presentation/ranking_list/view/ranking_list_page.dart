import 'package:flutter/material.dart';
import 'package:vote_your_face/presentation/ranking_list/ranking_list.dart';
import 'dart:math';

class RankingListPage extends StatelessWidget {
  const RankingListPage({Key? key}) : super(key: key);

  int randNumb() {
    var rng = Random();
    return rng.nextInt(100);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return RankingCard(
                  imageNumber: randNumb(),
                );
              }, childCount: 30),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 20,
                  childAspectRatio: 4 / 5,
                  mainAxisSpacing: 20),
            ),
          ),
        ],
      ),
    );
  }
}
