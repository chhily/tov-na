import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tov_na/core/constant/constants.dart';

class AvatarWidget extends StatelessWidget {
  final double? size;
  const AvatarWidget({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:
          "https://i.pinimg.com/564x/4b/12/d0/4b12d0489be1afaf835cca152ef186e0.jpg",
      imageBuilder: (context, imageProvider) {
        return CircleAvatar(
          radius: (size ?? 48) / 2,
          backgroundColor: AppColors.primary,
          backgroundImage: imageProvider,
        );
      },
      placeholder: (context, url) {
        return SizedBox(
          height: size ?? 48,
          width: size ?? 48,
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
        return CircleAvatar(
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
        );
      },
    );
  }
}
