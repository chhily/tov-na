import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tov_na/base/state_management/destination.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/widget/widget.dart';

import 'widget/accommodation.dart';
import 'widget/activity_food.dart';
import 'widget/choice_chips.dart';
import 'widget/header.dart';
import 'widget/highlight_destination.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final placeValue = ref.watch(destinationProvider).cambodianProvince;
    final selectedIndices = ref.watch(destinationProvider).selectedIndices;
    return Padding(
      padding: context.mediumGap,
      child: CustomScrollView(
        key: App.storageKeyHome,
        slivers: [
          SliverAppBar(
            stretch: true,
            titleSpacing: 0,
            floating: true,
            centerTitle: false,
            surfaceTintColor: AppColors.bgColor,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: context.regularGap,
              centerTitle: false,
              background: const HomeHeader(),
            ),
          ),
          AppText.title(AppString.headLabel).toSliver,
          AppSize.largeVerticalSpacing.toSliver,
          ChoiceChipWidget(
                  filters: placeValue.filters,
                  onSelected: (bool selected, int index) {
                    ref
                        .read(destinationProvider.notifier)
                        .onToggleSelection(index);
                  },
                  selectedIndices: selectedIndices)
              .toSliver,
          AppSize.mediumVerticalSpacing.toSliver,
          HighlightPlaceWidget(placeValue: placeValue).toSliver,
          AppSize.largeVerticalSpacing.toSliver,
          FoodWidget(food: placeValue.food, activity: placeValue.activity)
              .toSliver,
          AppSize.largeVerticalSpacing.toSliver,
          const AccommodationWidget().toSliver,
          AppSize.largeVerticalSpacing.toSliver,
        ],
      ),
    );
  }
}
