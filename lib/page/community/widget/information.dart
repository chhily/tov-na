import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/widget/network_image.dart';
import 'package:tov_na/core/widget/widget.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const AvatarWidget(size: 32),
            AppSize.smallHorizontalSpacing,
            AppText.body(
              "Chhily Lim",
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        AppSize.largeVerticalSpacing,
        LinkText.body("Today i visit Siemreap i saw many cool place."),
        AppSize.mediumVerticalSpacing,
        ClipRRect(
          borderRadius: AppRadius.smallRadius,
          child: const NetworkImageHelper(
              imgUrl:
                  "https://plus.unsplash.com/premium_photo-1661924223647-40abbac077c0?q=80&w=2070&auto=format"),
        )
      ],
    );
  }
}
