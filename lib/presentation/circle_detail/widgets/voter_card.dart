import 'package:flutter/material.dart';

class VoterCard extends StatelessWidget {
  const VoterCard({
    Key? key,
    required this.username,
    required this.placementNumber,
    required this.votes,
  }) : super(key: key);

  final String username;
  final int placementNumber;
  final int votes;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2, color: Colors.black),
        ),
      ),
      child: Card(
        elevation: 0,
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(right: 20, left: 5),
                child: Text(
                  placementNumber.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://randomuser.me/api/portraits/men/' +
                      12.toString() +
                      '.jpg',
                  fit: BoxFit.fill,
                  width: 80,
                  height: 80,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 5.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(votes.toString()),
                          Text(username.length > 2
                              ? username.substring(0, 10)
                              : username),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.stacked_line_chart_outlined),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
