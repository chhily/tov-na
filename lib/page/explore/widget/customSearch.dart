import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tov_na/core/constant/constants.dart';
import 'package:tov_na/core/widget/app_text.dart';
import 'package:tov_na/model/destination/cambodia.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  ThemeData appBarTheme(BuildContext context) {
    // TODO: implement appBarTheme

    return super.appBarTheme(context).copyWith(
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: appText.copyWith(color: AppColors.white),
          ),
          textTheme: TextTheme(
            bodyMedium: appText
          ),
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: AppColors.white),
          appBarTheme: const AppBarTheme(
            color: AppColors.primary,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: AppColors.primary,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.light,
            ),
          ),
        );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.close, color: AppColors.white),
      ),
    ];
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () async {
        close(context, null);
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          statusBarColor: AppColors.primary, // Set the desired color
          statusBarIconBrightness: Brightness.light, // Set icon color to light
          statusBarBrightness: Brightness.light, // Set the brightness to light
        ));
      },
      icon: const Icon(Icons.arrow_back, color: AppColors.white),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in cambodianProvinces) {
      if (item.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item.name);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: AppText.caption(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in cambodianProvinces) {
      if (item.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item.name);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: AppText.caption(result),
        );
      },
    );
  }
}
