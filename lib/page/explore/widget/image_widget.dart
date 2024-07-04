import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tov_na/core/widget/network_image.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int photoId = Random().nextInt(33) + 55;
    int sizeMultiplier = photoId % 7;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: NetworkImageHelper(
        imgUrl: "https://picsum.photos/id/$photoId/300/${200 * sizeMultiplier}",
        fit: BoxFit.cover,
      ),
    );
  }
}