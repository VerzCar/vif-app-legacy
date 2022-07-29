import 'package:flutter/material.dart';
import 'package:vote_your_face/presentation/profile/edit/profile_edit_image_view.dart';
import 'package:vote_your_face/presentation/shared/widgets/image/imagex.dart';

class ProfileEditImagePage extends StatelessWidget {
  const ProfileEditImagePage({
    Key? key,
    required this.imageX,
  }) : super(key: key);

  final ImageX imageX;

  @override
  Widget build(BuildContext context) {
    return ProfileEditImageView(imageX: imageX);
  }
}
