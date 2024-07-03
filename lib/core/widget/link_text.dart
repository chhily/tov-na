import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/widget/parsed_text/highlight.dart';
import 'package:tov_na/core/widget/parsed_text/read_more.dart';

class LinkText extends MaskText {
  final Color? color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextOverflow? textOverflow;
  final int? maxLine;
  final TextAlign? align;
  final TextDecoration? decoration;
  LinkText.body(
    super.data, {
    super.key,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.fontSize = FontSize.body,
    this.textOverflow,
    this.maxLine,
    this.align,
    this.decoration,
  }) : super(
          trimLines: 5,
          urlTextStyle: GoogleFonts.notoSansKhmer(
            color: AppColors.highlight,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: TextDecoration.underline,
          ),
          delimiter: ' ',
          delimiterStyle: GoogleFonts.notoSansKhmer(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: decoration,
          ),
          style: GoogleFonts.notoSansKhmer(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: decoration,
          ),
          lessStyle: GoogleFonts.notoSansKhmer(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: TextDecoration.underline,
          ),
          moreStyle: GoogleFonts.notoSansKhmer(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: TextDecoration.underline,
          ),
          trimMode: TrimMode.line,
          trimCollapsedText: AppString.seeLess,
          trimExpandedText: AppString.seeMore,
        );
  LinkText.caption(
    super.data, {
    super.key,
    this.color = AppColors.primaryText,
    this.fontWeight = FontWeight.normal,
    this.fontSize = FontSize.caption,
    this.textOverflow,
    this.maxLine,
    this.align,
    this.decoration,
  }) : super(
          trimLines: 5,
          urlTextStyle: GoogleFonts.notoSansKhmer(
            color: AppColors.highlight,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: TextDecoration.underline,
          ),
          delimiter: '  ',
          delimiterStyle: GoogleFonts.notoSansKhmer(
            color: AppColors.highlight,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: decoration,
          ),
          style: GoogleFonts.notoSansKhmer(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: decoration,
          ),
          lessStyle: GoogleFonts.notoSansKhmer(
            color: AppColors.highlight,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: TextDecoration.underline,
          ),
          moreStyle: GoogleFonts.notoSansKhmer(
            color: AppColors.highlight,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: TextDecoration.underline,
          ),
          trimMode: TrimMode.line,
          trimCollapsedText: AppString.seeMore,
          trimExpandedText: AppString.seeLess,
        );

  LinkText.highlight(
    super.data, {
    super.key,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.fontSize = FontSize.caption,
    this.textOverflow,
    this.maxLine,
    this.align,
    this.decoration,
  }) : super(
          trimLines: 5,
          urlTextStyle: GoogleFonts.notoSansKhmer(
            color: AppColors.highlight,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: TextDecoration.underline,
          ),
          highlightText: TargetTextHighlight(
              targetText: data,
              style: GoogleFonts.notoSansKhmer(
                color: AppColors.highlight,
                fontWeight: fontWeight,
                fontSize: fontSize,
                decoration: decoration,
              )),
          delimiter: ' ',
          delimiterStyle: GoogleFonts.notoSansKhmer(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: decoration,
          ),
          style: GoogleFonts.notoSansKhmer(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: decoration,
          ),
          lessStyle: GoogleFonts.notoSansKhmer(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: TextDecoration.underline,
          ),
          moreStyle: GoogleFonts.notoSansKhmer(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: TextDecoration.underline,
          ),
          trimMode: TrimMode.line,
          trimCollapsedText: AppString.seeLess,
          trimExpandedText: AppString.seeMore,
        );
}
