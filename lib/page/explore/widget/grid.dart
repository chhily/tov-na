import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'image_widget.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 7,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          const QuiltedGridTile(4, 3),
          const QuiltedGridTile(2, 2),
          const QuiltedGridTile(2, 2),
          const QuiltedGridTile(2, 2),
          const QuiltedGridTile(2, 2),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) => const ImageWidget(),
      ),
    );
  }
}
