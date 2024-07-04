import 'package:flutter/material.dart';
import 'package:tov_na/core/constant/constants.dart';

import 'widget/grid.dart';
import 'widget/search_bar.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.hideKeyboard(),
      child: Padding(
        padding: context.mediumGap,
        child: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [const ExploreSearchBar(forceElevated: true)];
            },
            body: const GridWidget()),
      ),
    );
  }
}

