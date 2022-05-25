import 'package:flutter/material.dart';
import 'package:vote_your_face/presentation/ranking_list/ranking_list.dart';

class RankingListItem extends StatelessWidget {
  const RankingListItem({
    Key? key,
    required this.imageNumber,
  }) : super(key: key);

  final int imageNumber;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        leading: Text('$imageNumber', style: textTheme.caption),
        title: RankingCard(
          imageNumber: imageNumber,
        ),
        isThreeLine: true,
        subtitle: const Text('Herbert Schuhmann'),
        dense: true,
      ),
    );
  }
}
