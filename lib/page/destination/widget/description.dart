import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/widget/app_text.dart';
import 'package:tov_na/model/destination/cambodia.dart';

class DescriptionWidget extends StatelessWidget {
  final Destination value;
  const DescriptionWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: context.mediumGap,
      children: [
        AppSize.largeVerticalSpacing,
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText.title(value.name),
                  AppSize.smallVerticalSpacing,
                  AppText.body(value.location, color: AppColors.subtitle),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            IconButton(
                onPressed: () async {
                  Share.share(value.name);
                },
                icon: const Icon(Icons.share_rounded)),
          ],
        ),
        AppSize.largeVerticalSpacing,
        AppText.body(value.fullDescription)
      ],
    );
  }
}
