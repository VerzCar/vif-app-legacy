import 'dart:io';

import 'package:flutter/material.dart';

class ImageX {
  ImageX({
    required this.imageSrc,
    this.imagePlaceholderColors,
    this.fit,
    this.width,
    this.height,
  });

  final String imageSrc;
  final String? imagePlaceholderColors;
  final BoxFit? fit;
  final double? width;
  final double? height;

  Widget image() {
    if (imagePlaceholderColors != null) {
      return Container(
          height: width,
          width: height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: decodeImageColors(),
          )));
    }
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

  List<Color> decodeImageColors() {
    final colors = imagePlaceholderColors!.split('|');
    return [HexColor.fromHex(colors[0]), HexColor.fromHex(colors[1])];
  }
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
