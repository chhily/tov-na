import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tov_na/core/constant/app_extension.dart';
import 'package:tov_na/core/widget/app_text.dart';

class HomePage extends ConsumerStatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        AppText.title(widget.title).toSliver
      ],
    );
  }
}
