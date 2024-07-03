import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/widget/widget.dart';

class Helper {
  Helper._();

  static String getStaticMapImage({required String latitude, required String longitude}){
    return 'https://maps.googleapis.com/maps/api/staticmap?'
        'zoom=12&size=400x400&scale=2&markers=color'
        ':red%7C$latitude,$longitude&key=[GOOGLE_API_KEY]';
  }

  static showSnackBar({required BuildContext context, String? label}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.primary,
        content: AppText.body(
          label ?? "Yay!",
          color: AppColors.white,
        ),
      ),
    );
  }

  static Future simpleDialogHelper(
      {required BuildContext context, required Widget child}) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: child,
        );
      },
    );
  }

  static Future<Object?> openMaterialPage(BuildContext context, Widget page,
      {RouteSettings? routeSetting}) async {
    return await Navigator.push(context,
        MaterialPageRoute(builder: (context) => page, settings: routeSetting));
  }

  static scheduleNavigation(BuildContext context, Widget page,
      {RouteSettings? routeSetting}) {
    return SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => page, settings: routeSetting));
    });
  }
}
