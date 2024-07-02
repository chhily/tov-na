import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tov_na/base/state_management/destination.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/util/utils.dart';
import 'package:tov_na/core/widget/widget.dart';

import 'drop_down.dart';

class HomeHeader extends ConsumerWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final destinationLabel = ref.watch(destinationProvider).cambodianProvince;
    return Row(
      children: [
        TextButton(
          onPressed: () {
            Helper.simpleDialogHelper(
              context: context,
              child: const CambodiaDestination(),
            );
          },
          child: Row(
            children: [
              const Icon(Icons.location_pin, size: 16),
              AppSize.smallHorizontalSpacing,
              AppText.body(destinationLabel.name,
                  decoration: TextDecoration.underline),
            ],
          ),
        ),
        const Spacer(),
        Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: AppColors.primary)),
            child: const AvatarWidget()),
      ],
    );
  }
}
