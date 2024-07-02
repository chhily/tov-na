import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/constants.dart';

class DefaultTheme {
  static DefaultTheme? _instance;
  static DefaultTheme get instance {
    return _instance ??= DefaultTheme._init();
  }

  DefaultTheme._init();

  static const fontFamily = "NotoSansKhmer";

  ThemeData get theme => ThemeData(
        textTheme: textTheme(),
        drawerTheme: const DrawerThemeData(
          backgroundColor: AppColors.bgColor,
          surfaceTintColor: AppColors.primary,
        ),
        dialogTheme: DialogTheme(
          backgroundColor: AppColors.bgColor,
          titleTextStyle: GoogleFonts.notoSansKhmer(
            fontSize: FontSize.title,
            color: AppColors.primaryText,
            fontWeight: FontWeight.bold,
          ),
          elevation: 0,
        ),
        cardColor: AppColors.white,
        cardTheme: CardTheme(
          color: AppColors.white,
          margin: EdgeInsets.zero,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        elevatedButtonTheme: elevatedButtonTheme,
        outlinedButtonTheme: outlineButtonTheme,
        textButtonTheme: textButtonTheme,
        iconTheme: iconTheme,
        scaffoldBackgroundColor: AppColors.bgColor,
        appBarTheme: appBarTheme,
        iconButtonTheme: iconButtonTheme,
        useMaterial3: true,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.primary,
        ),
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(AppColors.subtitle),
          thickness: MaterialStateProperty.all(4.0),
        ),
        colorScheme: colorScheme,
      );

  ColorScheme get colorScheme {
    return ColorScheme.fromSwatch().copyWith(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      background: AppColors.bgColor,
    );
  }

  TextTheme textTheme() {
    return ThemeData.light().textTheme.apply(
          fontFamily: fontFamily,
          bodyColor: AppColors.primaryText,
          displayColor: AppColors.primaryText,
        );
  }

  AppBarTheme get appBarTheme {
    return AppBarTheme(
      color: AppColors.bgColor,
      iconTheme: const IconThemeData(color: AppColors.secondary),
      actionsIconTheme: const IconThemeData(color: AppColors.secondary),
      titleTextStyle: GoogleFonts.notoSansKhmer(
        fontSize: FontSize.title,
        color: AppColors.primaryText,
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    );
  }

  ElevatedButtonThemeData get elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.primary,
        textStyle: GoogleFonts.notoSansKhmer(
          fontSize: FontSize.body,
          color: AppColors.white,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }

  OutlinedButtonThemeData get outlineButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        textStyle: GoogleFonts.notoSansKhmer(
          fontSize: FontSize.body,
          color: AppColors.primaryText,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }

  TextButtonThemeData get textButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: GoogleFonts.notoSansKhmer(
          fontSize: FontSize.body,
          color: AppColors.primaryText,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }

  IconThemeData get iconTheme {
    return const IconThemeData(
      color: AppColors.subtitle,
    );
  }

  IconButtonThemeData get iconButtonTheme {
    return IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStateProperty.all(AppColors.white),
      ),
    );
  }
}
