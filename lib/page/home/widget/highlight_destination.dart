import 'package:flutter/material.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/util/utils.dart';
import 'package:tov_na/core/widget/network_image.dart';
import 'package:tov_na/core/widget/widget.dart';
import 'package:tov_na/model/destination/cambodia.dart';
import 'package:tov_na/page/destination/destination.dart';

class HighlightPlaceWidget extends StatelessWidget {
  final CambodianProvince placeValue;
  const HighlightPlaceWidget({super.key, required this.placeValue});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          placeValue.destinations.length,
          (index) {
            final itemValue = placeValue.destinations.elementAt(index);
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  borderRadius: AppRadius.mediumRadius,
                  onTap: () {
                    Helper.openMaterialPage(context, const DestinationPage(),
                        routeSetting: RouteSettings(arguments: itemValue));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _pictures(context: context, itemValue: itemValue),
                      AppSize.mediumVerticalSpacing,
                      _info(context: context, itemValue: itemValue),
                    ],
                  ),
                ),
                AppSize.mediumHorizontalSpacing,
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _pictures(
      {required BuildContext context, required Destination itemValue}) {
    return SizedBox(
      width: context.mediaQueryWidth * 0.55,
      height: context.mediaQueryHeight * 0.25,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: AppRadius.mediumRadius,
            child: Hero(
              tag: itemValue.imageUrl,
              child: NetworkImageHelper(
                  fit: BoxFit.cover, imgUrl: itemValue.imageUrl),
            ),
          ),
          const Positioned(
            top: 4,
            right: 12,
            child: CircleAvatar(
              backgroundColor: AppColors.white,
              radius: 14,
              child:
                  Icon(Icons.favorite, color: AppColors.actionColors, size: 16),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: AppRadius.mediumRadius,
              child: Container(
                width: context.mediaQueryWidth * 0.55,
                height: context.mediaQueryHeight * 0.25,
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.6),
                ], begin: Alignment.center, end: Alignment.bottomLeft)),
                child: Padding(
                  padding: context.smallGap,
                  child: Row(
                    children: [
                      const Icon(Icons.star,
                          color: AppColors.secondary, size: 14),
                      const AppSpace.x(x: 4),
                      AppText.caption("4.1/5.0", color: AppColors.white),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _info(
      {required BuildContext context, required Destination itemValue}) {
    return SizedBox(
      width: context.mediaQueryWidth * 0.55,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.body(itemValue.name, fontWeight: FontWeight.bold),
          AppSize.mediumVerticalSpacing,
          AppText.caption(
            itemValue.description,
            maxLine: 3,
            color: AppColors.subtitle,
          ),
          AppSize.smallVerticalSpacing,
          AppText.caption(
            "Start from \$${itemValue.accommodationPrice} / day",
            maxLine: 3,
          ),
          AppSize.smallVerticalSpacing,
        ],
      ),
    );
  }
}
