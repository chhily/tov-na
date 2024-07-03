import 'package:flutter/material.dart';
import 'package:tov_na/core/widget/network_image.dart';

class ImageDescription extends StatelessWidget {
  final String imgUrl;
  const ImageDescription({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: imgUrl,
        child: NetworkImageHelper(imgUrl: imgUrl, fit: BoxFit.cover));

  }
}
