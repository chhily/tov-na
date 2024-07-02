import 'package:flutter/material.dart';

///by default  12
class AppSpace extends SizedBox {
  final double? x;
  final double? y;

  ///by default 16
  const AppSpace.x({
    super.key,
    this.x,
    this.y,
  }) : super(width: x ?? 16);

  ///by default  16
  const AppSpace.y({
    super.key,
    this.y,
    this.x,
  }) : super(height: y ?? 16);
}
