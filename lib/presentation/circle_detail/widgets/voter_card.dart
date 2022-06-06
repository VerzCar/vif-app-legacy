import 'package:flutter/material.dart';

class VoterCard extends StatelessWidget {
  const VoterCard({Key? key, required this.username}) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Image.network(
              'https://randomuser.me/api/portraits/men/' +
                  12.toString() +
                  '.jpg',
              fit: BoxFit.fill,
            ),
            title: Text(username),
            subtitle: const Text('Many votes : 123.4k'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('Vote UP'),
                onPressed: () {
                  /* ... */
                },
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('Vote DOWN'),
                onPressed: () {
                  /* ... */
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
