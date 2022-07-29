import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vote_your_face/presentation/routes/router.dart';
import 'package:vote_your_face/presentation/shared/widgets/image/imagex.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    required this.imageX,
    this.isEditable = false,
  }) : super(key: key);

  final ImageX imageX;
  final bool isEditable;

  Container imageContainer(Widget? child) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return imageContainer(
      isEditable
          ? _ProfileImageEditView(imageX: imageX)
          : _ProfileImageView(imageX: imageX),
    );
  }
}

class _ProfileImageView extends StatelessWidget {
  const _ProfileImageView({
    Key? key,
    required this.imageX,
  }) : super(key: key);

  final ImageX imageX;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(ProfileImageRoute(
            imageX: ImageX(
          imageSrc: imageX.imageSrc,
          fit: BoxFit.contain,
        )));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: imageX.image(),
      ),
    );
  }
}

class _ProfileImageEditView extends StatelessWidget {
  const _ProfileImageEditView({
    Key? key,
    required this.imageX,
  }) : super(key: key);

  final ImageX imageX;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(ProfileEditImageRoute(imageX: ImageX(
          imageSrc: imageX.imageSrc,
          fit: BoxFit.contain,
        )));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            imageX.image(),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}