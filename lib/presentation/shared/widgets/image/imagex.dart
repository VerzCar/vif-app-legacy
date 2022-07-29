import 'dart:io';

import 'package:flutter/material.dart';

class ImageX {
  ImageX({
    required this.imageSrc,
    this.fit,
    this.width,
    this.height,
  });

  final String imageSrc;
  final BoxFit? fit;
  final double? width;
  final double? height;

  Image image() {
    if (isNetworkImage) {
      return Image.network(
        imageSrc,
        fit: fit,
        height: width,
        width: height,
      );
    }
    return Image.file(
      File(imageSrc),
      fit: fit,
      height: width,
      width: height,
    );
  }

  bool get isNetworkImage {
    return imageSrc.startsWith('http');
  }
}
