import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tov_na/base/state_management/destination.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/widget/widget.dart';
import 'package:tov_na/model/destination/cambodia.dart';

class CambodiaDestination extends ConsumerWidget {
  const CambodiaDestination({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: cambodianProvinces.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: AppRadius.mediumRadius,
          child: ExpansionTile(
            childrenPadding: context.mediumGap,
            backgroundColor: AppColors.bgColor,
            collapsedBackgroundColor: AppColors.bgColor,
            controlAffinity: ListTileControlAffinity.platform,
            title: AppText.body(cambodianProvinces[index].name),
            children: <Widget>[
              AppText.caption(cambodianProvinces[index].description),
              AppSize.mediumVerticalSpacing,
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: AppColors.primary),
                  onPressed: () async {
                    ref
                        .read(destinationProvider.notifier)
                        .onChangeDestination(cambodianProvinces[index]);
                    Navigator.of(context).pop();
                  },
                  child: AppText.caption("Select", color: AppColors.white),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
