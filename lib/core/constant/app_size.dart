import 'package:flutter/material.dart';

/// Caption: 12 sp
///
/// Body: 14 sp (Body2 in Material Design)
///
/// Body1: 16 sp (Body1 in Material Design)
///
/// Subtitle: 16 sp
///
/// Title: 20 sp
///
/// Headline: 24 sp
///
/// Display1: 32 sp
///
/// most use case is body and caption
class FontSize {
  FontSize._();

  static const double caption = 12.0; // Overline can also be around this size
  static const double body = 14.0; // Body2 in Material Design
  static const double body1 = 16.0; // Body1 in Material Design
  static const double subtitle = 16.0;
  static const double button = 14.0;
  static const double title = 20.0; // H6 in Material Design
  static const double headline = 24.0; // H5 in Material Design
  static const double display1 = 32.0; // H4 in Material Design
}

class AppRadius {
  AppRadius._();

  static const double small = 4.0;
  static const double medium = 8.0;
  static const double large = 16.0;
  static const double extraLarge = 32.0;

  static BorderRadius smallRadius = BorderRadius.circular(small);
  static BorderRadius mediumRadius = BorderRadius.circular(medium);
  static BorderRadius largeRadius = BorderRadius.circular(large);
  static BorderRadius extraLargeRadius = BorderRadius.circular(extraLarge);
}
