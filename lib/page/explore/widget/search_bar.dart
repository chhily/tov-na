import 'package:flutter/material.dart';
import 'package:tov_na/page/explore/widget/customSearch.dart';

import '../../../core/constant/constants.dart';

class ExploreSearchBar extends StatelessWidget {
  final bool forceElevated;
  const ExploreSearchBar({super.key, required this.forceElevated});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      titleSpacing: 0,
      stretch: true,
      forceElevated: forceElevated,
      surfaceTintColor: AppColors.bgColor,
      flexibleSpace: FlexibleSpaceBar(
        background: Row(
          children: [
            Expanded(
              child: InkWell(
                borderRadius: AppRadius.extraLargeRadius,
                onTap: () {
                  showSearch(
                      context: context, delegate: CustomSearchDelegate());
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: AppRadius.extraLargeRadius),
                  color: AppColors.subtitle.withOpacity(0.5),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.search_rounded),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Expanded(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(vertical: 8.0),
            //     child: SearchAnchor(
            //       builder: (context, controller) {
            //         return SearchBar(
            //           focusNode: FocusNode(
            //             canRequestFocus: true,
            //           ),
            //           leading: const Icon(Icons.search),
            //           hintText: "Search",
            //           controller: controller,
            //           onTap: () {
            //             controller.openView();
            //           },
            //           onChanged: (value) {
            //             controller.openView();
            //           },
            //         );
            //       },
            //       suggestionsBuilder: (context, controller) {
            //         return List<ListTile>.generate(5, (index) {
            //           final String item = 'item $index';
            //           return ListTile(
            //             title: AppText.body(item),
            //             onTap: () {
            //               controller.closeView(item);
            //             },
            //           );
            //         });
            //       },
            //     ),
            //   ),
            // ),
            IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: AppColors.subtitle.withOpacity(0.5)),
              onPressed: () {},
              icon: const Icon(Icons.qr_code_scanner_rounded, size: 20),
            )
          ],
        ),
      ),
    );
  }
}
