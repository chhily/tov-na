import 'package:flutter/material.dart';

class Helper {
  Helper._();
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
}
