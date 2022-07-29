import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vote_your_face/presentation/profile/edit/cubit/profile_edit_cubit.dart';
import 'package:vote_your_face/presentation/shared/widgets/image/imagex.dart';
import 'package:vote_your_face/presentation/routes/router.dart';

class ProfileEditImageView extends StatelessWidget {
  const ProfileEditImageView({
    Key? key,
    required this.imageX,
  }) : super(key: key);

  final ImageX imageX;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(
        bottomSheetCallback: _displaysBottomSheet,
      ),
      body: BlocConsumer<ProfileEditCubit, ProfileEditState>(
        listener: (context, state) {},
        buildWhen: (previous, current) =>
            previous.imagePath != current.imagePath,
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(5),
            height: double.infinity,
            width: double.infinity,
            child: state.imagePath.isEmpty
                ? imageX.image()
                : ImageX(
                    imageSrc: state.imagePath,
                    fit: BoxFit.contain,
                  ).image(),
          );
        },
      ),
    );
  }

  dynamic _displaysBottomSheet(BuildContext context) {
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
                  onPressed: () => context.router.push(const CameraRoute()),
                  icon: const Icon(Icons.camera_alt_outlined),
                  label: const Text("Open camera"),
                ),
                const Divider(),
                TextButton.icon(
                  onPressed: () => {_getFromGallery(context)},
                  icon: const Icon(Icons.image_outlined),
                  label: const Text("Select from album"),
                ),
                const Divider(),
                TextButton.icon(
                  onPressed: () => {},
                  icon: const Icon(Icons.delete),
                  label: const Text(
                    "Delete profile image",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _getFromGallery(BuildContext context) async {
    final XFile? image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    print(image!.path);
    if (image == null) {
      print(image);
      return;
    }
    context.read<ProfileEditCubit>().profileImageChanged(image.path);
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
