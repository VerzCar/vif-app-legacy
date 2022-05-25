import 'package:flutter/material.dart';

class RankingCard extends StatelessWidget {
  final int imageNumber;

  const RankingCard({
    Key? key,
    required this.imageNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.network(
            'https://randomuser.me/api/portraits/men/' +
                imageNumber.toString() +
                '.jpg',
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
