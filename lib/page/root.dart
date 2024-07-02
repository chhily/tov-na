import 'package:flutter/material.dart';
import 'package:tov_na/page/navigation/bottom_navigation.dart';

import '../core/theme/default_theme.dart';

class TovNaApp extends StatelessWidget {
  const TovNaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: DefaultTheme.instance.theme,
      home: const NavRoot(),
    );
  }
}
