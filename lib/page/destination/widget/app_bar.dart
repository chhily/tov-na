import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constant/app_color.dart';

class DestinationAppBar extends StatelessWidget {
  final bool forceElevated;
  final Widget background;
  final void Function()? onPressed;
  const DestinationAppBar(
      {super.key,
      required this.background,
      this.onPressed,
      required this.forceElevated});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      forceElevated: forceElevated,
      actions: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: AppColors.white.withOpacity(0.8),
          ),
          onPressed: onPressed,
          icon: const Icon(Icons.more_horiz_rounded, color: AppColors.primary),
        ),
      ],
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      elevation: 1,
      backgroundColor: AppColors.white,
      surfaceTintColor: AppColors.white,
      expandedHeight: MediaQuery.of(context).size.height * 0.5,
      pinned: true,
      leading: IconButton(
        style: IconButton.styleFrom(
          backgroundColor: AppColors.white.withOpacity(0.8),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back_rounded, color: AppColors.primary),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: background,
      ),
    );
  }
}
