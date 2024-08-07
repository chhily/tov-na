import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/widget/network_image.dart';
import 'package:tov_na/core/widget/widget.dart';
import 'package:tov_na/model/destination/cambodia.dart';

class FoodWidget extends StatelessWidget {
  final List<Food> food;
  final List<Activity> activity;
  const FoodWidget({Key? key, required this.food, required this.activity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppText.title("${AppString.food}& ${AppString.activity}"),
        AppSize.largeVerticalSpacing,
        StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: List.generate(
            activity.length,
            (index) {
              final itemValue = activity.elementAt(index);
              if ((index + 1) == activity.length) {
                if ((index + 1).isEven) {
                  return activityGrid(1, 1, value: itemValue);
                } else {
                  return activityGrid(3, 1, value: itemValue);
                }
              }
              if (index.isEven) {
                return activityGrid(2, 1, value: itemValue);
              }
              return activityGrid(1, 1, value: itemValue);
            },
          ),
        ),
        const AppSpace.y(y: 4),
        StaggeredGrid.count(
          crossAxisCount: 6,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: List.generate(
            food.length,
            (index) {
              final itemValue = food.elementAt(index);
              if ((index + 1) == food.length) {
                if ((index + 1).isOdd) {
                  return customGrid(3, 4, value: itemValue);
                } else {
                  return customGrid(6, 3, value: itemValue);
                }
              }
              if (index.isOdd) {
                return customGrid(3, 4, value: itemValue);
              } else {
                return customGrid(3, 2, value: itemValue);
              }
            },
          ),
        ),
      ],
    );
  }

  Widget customGrid(int crossAxisCellCount, num mainAxisCellCount,
      {required Food value}) {
    return StaggeredGridTile.count(
      crossAxisCellCount: crossAxisCellCount,
      mainAxisCellCount: mainAxisCellCount,
      child: ClipRRect(
          borderRadius: AppRadius.mediumRadius,
          child: Stack(
            fit: StackFit.expand,
            children: [
              NetworkImageHelper(imgUrl: value.imageUrl, fit: BoxFit.cover),
              Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.5),
                  ], begin: Alignment.center, end: Alignment.bottomLeft),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppText.caption(value.name,
                      color: AppColors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
    );
  }

  Widget activityGrid(int crossAxisCellCount, num mainAxisCellCount,
      {required Activity value}) {
    return StaggeredGridTile.count(
      crossAxisCellCount: crossAxisCellCount,
      mainAxisCellCount: mainAxisCellCount,
      child: ClipRRect(
          borderRadius: AppRadius.mediumRadius,
          child: NetworkImageHelper(imgUrl: value.imageUrl, fit: BoxFit.cover)),
    );
  }
}
