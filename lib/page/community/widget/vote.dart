import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/widget/widget.dart';

class VoteWidget extends StatelessWidget {
  final void Function()? onUpVote;
  final void Function()? onDeVote;
  const VoteWidget({super.key, this.onUpVote, this.onDeVote});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(AppRadius.extraLarge),
              top: Radius.circular(AppRadius.extraLarge),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: onUpVote,
                borderRadius: AppRadius.extraLargeRadius,
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.arrow_circle_up_rounded,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: AppText.caption("100k", fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: onDeVote,
                borderRadius: AppRadius.extraLargeRadius,
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.arrow_drop_down_circle_rounded,
                  ),
                ),
              ),
            ],
          ),
        ),
        // AppSize.mediumHorizontalSpacing,
        // InkWell(
        //   borderRadius: AppRadius.extraLargeRadius,
        //   onTap: () {},
        //   child: Material(
        //     color: AppColors.primary.withOpacity(0.1),
        //     borderRadius: const BorderRadius.vertical(
        //       bottom: Radius.circular(AppRadius.extraLarge),
        //       top: Radius.circular(AppRadius.extraLarge),
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        //           const Padding(
        //             padding: EdgeInsets.all(2.0),
        //             child: Icon(
        //               CupertinoIcons.chat_bubble_fill,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.symmetric(horizontal: 2.0),
        //             child: AppText.caption("100k", fontWeight: FontWeight.bold),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
