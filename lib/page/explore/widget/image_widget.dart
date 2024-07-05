import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tov_na/core/widget/network_image.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: NetworkImageHelper(
        imgUrl:
            "https://picsum.photos/id/${Random().nextInt(33) + 55}/300/${200 * ((Random().nextInt(33) + 55) % 7)}",
        fit: BoxFit.cover,
      ),
    );
  }
}
