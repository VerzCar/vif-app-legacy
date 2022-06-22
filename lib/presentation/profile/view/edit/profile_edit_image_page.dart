import 'package:flutter/material.dart';

class ProfileEditImagePage extends StatelessWidget {
  const ProfileEditImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(
          bottomSheetCallback: (context) => _displaysBottomSheet(context)),
      body: Container(
        padding: const EdgeInsets.all(5),
        height: double.infinity,
        width: double.infinity,
        child: Image.network(
          'https://randomuser.me/api/portraits/men/' + 18.toString() + '.jpg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  void _displaysBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextButton.icon(
                  onPressed: () => {},
                  icon: const Icon(Icons.camera_alt_outlined),
                  label: const Text("Open camera"),
                ),
                const Divider(),
                TextButton.icon(
                  onPressed: () => {},
                  icon: const Icon(Icons.image_outlined),
                  label: const Text("Select from album"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    Key? key,
    required this.bottomSheetCallback,
  }) : super(key: key);

  final Function(BuildContext context) bottomSheetCallback;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          icon: const Icon(
            Icons.more_horiz,
          ),
          onPressed: () {
            bottomSheetCallback(context);
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
