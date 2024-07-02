import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tov_na/base/state_management/destination.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/widget/widget.dart';
import 'widget/choice_chips.dart';
import 'widget/header.dart';
import 'widget/highlight_destination.dart';

class HomePage extends ConsumerStatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final placeValue = ref.watch(destinationProvider).cambodianProvince;
    final selectedIndices = ref.watch(destinationProvider).selectedIndices;

    return Padding(
      padding: context.regularGap,
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            elevation: 0,
            pinned: true,
            stretch: true,
            centerTitle: false,
            surfaceTintColor: Colors.transparent,
            titleSpacing: 0,
            title: HomeHeader(),
          ),
          AppText.title(AppString.headLabel).toSliver,
          AppSize.largeVerticalSpacing.toSliver,
          ChoiceChipWidget(
            filters: placeValue.filters,
            onSelected: (bool selected, int index) {
              ref.read(destinationProvider.notifier).onToggleSelection(index);
            },
            selectedIndices: selectedIndices,
          ).toSliver,
          AppSize.mediumVerticalSpacing.toSliver,
          HighlightPlaceWidget(placeValue: placeValue).toSliver,
        ],
      ),
    );
  }
}
