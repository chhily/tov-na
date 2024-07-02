import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/constants.dart';

class AppText extends Text {
  final Color? color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextOverflow? textOverflow;
  final int? maxLine;
  final TextAlign? align;
  final TextDecoration? decoration;

  AppText.headline(super.data,
      {super.key,
        this.color = AppColors.primaryText,
        this.fontWeight = FontWeight.bold,
        this.fontSize = FontSize.headline,
        this.maxLine,
        this.textOverflow,
        this.decoration,
        this.align})
      : super(
      textAlign: align ?? TextAlign.left,
      maxLines: maxLine,
      overflow: textOverflow,
      style: GoogleFonts.notoSansKhmer(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: decoration,
      ));

  AppText.title(super.data,
      {super.key,
        this.color = AppColors.primaryText,
        this.fontWeight = FontWeight.bold,
        this.fontSize = FontSize.title,
        this.maxLine,
        this.textOverflow,
        this.decoration,
        this.align})
      : super(
      textAlign: align ?? TextAlign.left,
      maxLines: maxLine,
      overflow: textOverflow,
      style: GoogleFonts.notoSansKhmer(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: decoration,
      ));

  AppText.subtitle(super.data,
      {super.key,
        this.color = AppColors.primaryText,
        this.fontWeight = FontWeight.w500,
        this.fontSize = FontSize.subtitle,
        this.maxLine,
        this.textOverflow,
        this.decoration,
        this.align})
      : super(
      textAlign: align ?? TextAlign.left,
      maxLines: maxLine,
      overflow: textOverflow,
      style: GoogleFonts.notoSansKhmer(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: decoration,
      ));

  AppText.body(super.data,
      {super.key,
        this.color = AppColors.primaryText,
        this.fontWeight = FontWeight.normal,
        this.fontSize = FontSize.body,
        this.maxLine,
        this.textOverflow,
        this.decoration,
        this.align})
      : super(
      textAlign: align ?? TextAlign.left,
      maxLines: maxLine,
      overflow: textOverflow,
      style: GoogleFonts.notoSansKhmer(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: decoration,
      ));

  AppText.body1(super.data,
      {super.key,
        this.color = AppColors.primaryText,
        this.fontWeight = FontWeight.normal,
        this.fontSize = FontSize.body1,
        this.maxLine,
        this.textOverflow,
        this.decoration,
        this.align})
      : super(
      textAlign: align ?? TextAlign.left,
      maxLines: maxLine,
      overflow: textOverflow,
      style: GoogleFonts.notoSansKhmer(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: decoration,
      ));

  AppText.caption(super.data,
      {super.key,
        this.color = AppColors.primaryText,
        this.fontWeight = FontWeight.normal,
        this.fontSize = FontSize.caption,
        this.maxLine,
        this.textOverflow,
        this.decoration,
        this.align})
      : super(
    textAlign: align ?? TextAlign.start,
    maxLines: maxLine,
    overflow: textOverflow,
    style: GoogleFonts.notoSansKhmer(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      decoration: decoration,
    ),
  );
}
