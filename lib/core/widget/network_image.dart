import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tov_na/core/constant/constants.dart';

class NetworkImageHelper extends StatelessWidget {
  final String imgUrl;
  final BoxFit? fit;
  const NetworkImageHelper({super.key, required this.imgUrl, this.fit});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      fit: fit,
      placeholder: (context, url) {
        return SizedBox(
          height: context.mediaQueryHeight * 0.3,
          width: context.mediaQueryWidth * 0.3,
          child: const Center(
            child: SizedBox(
              height: 12,
              width: 12,
              child: CircularProgressIndicator.adaptive(
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                strokeWidth: 1,
              ),
            ),
          ),
        );
      },
      errorWidget: (context, url, error) {
        return Center(
          child: CircleAvatar(
            backgroundColor: AppColors.primary,
            child: Image.network(
              url,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.person_off_rounded,
                  color: AppColors.white,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
