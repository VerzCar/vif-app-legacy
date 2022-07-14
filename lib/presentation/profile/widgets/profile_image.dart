import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vote_your_face/presentation/routes/router.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    required this.imageSrc,
    this.isEditable = false,
  }) : super(key: key);

  final String imageSrc;
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

  Image image() {
    return Image.network(
      imageSrc,
      fit: BoxFit.fill,
      height: 150,
      width: 150,
    );
  }

  @override
  Widget build(BuildContext context) {
    return imageContainer(
      isEditable
          ? _ProfileImageEditView(image: image(), imageSrc: imageSrc)
          : _ProfileImageView(image: image(), imageSrc: imageSrc),
    );
  }
}

class _ProfileImageView extends StatelessWidget {
  const _ProfileImageView({
    Key? key,
    required this.image,
    required this.imageSrc,
  }) : super(key: key);

  final Image image;
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(ProfileImageRoute(imageSrc: imageSrc));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: image,
      ),
    );
  }
}

class _ProfileImageEditView extends StatelessWidget {
  const _ProfileImageEditView({
    Key? key,
    required this.image,
    required this.imageSrc,
  }) : super(key: key);

  final Image image;
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(ProfileEditImageRoute(imageSrc: imageSrc));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            image,
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
