import 'package:flutter/material.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/widget/app_text.dart';

class ChoiceChipWidget extends StatelessWidget {
  final List<String> filters;
  final void Function(bool selected, int index) onSelected;
  final List<int> selectedIndices;

  const ChoiceChipWidget({
    super.key,
    required this.filters,
    required this.onSelected,
    required this.selectedIndices,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 4,
      children: List<Widget>.generate(
        filters.length,
        (int index) {
          final isSelected = selectedIndices.contains(index);
          return ChoiceChip(
            showCheckmark: false,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: AppRadius.extraLargeRadius,
            ),
            selectedColor: AppColors.primary,
            side: const BorderSide(color: AppColors.subtitle),
            label: AppText.caption(
              filters[index],
              color: isSelected ? AppColors.white : AppColors.primaryText,
            ),
            selected: isSelected,
            onSelected: (selected) {
              onSelected(selected, index);
            },
          );
        },
      ).toList(),
    );
  }
}
