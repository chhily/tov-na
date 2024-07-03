import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tov_na/base/state_management/destination.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/widget/widget.dart';

import 'widget/accommodation.dart';
import 'widget/activity_food.dart';
import 'widget/choice_chips.dart';
import 'widget/highlight_destination.dart';

class HomePage extends ConsumerStatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final placeValue = ref.watch(destinationProvider).cambodianProvince;
    final selectedIndices = ref.watch(destinationProvider).selectedIndices;
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        AppText.title(AppString.headLabel),
        AppSize.largeVerticalSpacing,
        ChoiceChipWidget(
          filters: placeValue.filters,
          onSelected: (bool selected, int index) {
            ref.read(destinationProvider.notifier).onToggleSelection(index);
          },
          selectedIndices: selectedIndices,
        ),
        AppSize.mediumVerticalSpacing,
        HighlightPlaceWidget(placeValue: placeValue),
        AppSize.largeVerticalSpacing,
        FoodWidget(food: placeValue.food, activity: placeValue.activity),
        AppSize.largeVerticalSpacing,
        const AccommodationWidget(),
        AppSize.largeVerticalSpacing,
      ],
    );
  }
}
