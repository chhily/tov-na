import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tov_na/core/constant/constants.dart';
import '../../../core/widget/widget.dart';
import 'information.dart';
import 'vote.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primary.withOpacity(0.05),
      child: InkWell(
        borderRadius: AppRadius.mediumRadius,
        onTap: () {

        },
        child: Padding(
          padding: context.mediumGap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Changed to stretch
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const InformationWidget(),
              AppSize.largeVerticalSpacing,
              VoteWidget(
                onUpVote: () {},
                onDeVote: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
