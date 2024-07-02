import 'package:flutter/material.dart';

extension AppExtension on BuildContext {
  void hideKeyboard() => FocusScope.of(this).unfocus();

  Size get mediaQuerySize => MediaQuery.of(this).size;
  double get mediaQueryWidth => MediaQuery.of(this).size.width;
  double get mediaQueryHeight => MediaQuery.of(this).size.height;



  EdgeInsets get smallGap =>
      const EdgeInsets.symmetric(horizontal: 8, vertical: 4);
  EdgeInsets get mediumGap =>
      const EdgeInsets.symmetric(horizontal: 12, vertical: 8);
  EdgeInsets get regularGap =>
      const EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  EdgeInsets get bigGap =>
      const EdgeInsets.symmetric(horizontal: 20, vertical: 16);
  EdgeInsets get hugeGap =>
      const EdgeInsets.symmetric(horizontal: 24, vertical: 20);

}

mixin LikeCoolDownMixin {
  static const Duration likeCoolDownDuration = Duration(seconds: 1);
  DateTime? lastLikeClickTimestamp;
}

extension WidgetExtension on Widget {
  Widget get toSliver {
    return SliverToBoxAdapter(child: this);
  }
}

extension ImagePathExtension on String {
  String get toSVG => 'asset/svg/$this.svg';
  String get toPNG => 'asset/svg/$this.svg';
}
