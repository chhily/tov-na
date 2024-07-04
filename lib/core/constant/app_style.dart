import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tov_na/core/constant/constants.dart';

TextStyle appText = GoogleFonts.notoSansKhmer(
  color: AppColors.primaryText,
  fontWeight: FontWeight.normal,
  fontSize: FontSize.body,
);

void initAppOverlay() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.bgColor,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
  ));
}
