import 'package:flutter/material.dart';
import 'package:tov_na/page/community/community.dart';
import 'package:tov_na/page/explore/explore.dart';

import '../../page/home/home.dart';

class App {
  App._();
  static const List<Widget> page = [
    HomePage(),
    ExplorePage(),
    CommunityPage(),
    HomePage(),
    HomePage(),
  ];

  static const List<NavigationDestination> itemNav = [
    NavigationDestination(
      icon: Icon(Icons.home_rounded),
      label: "Home",
    ),
    NavigationDestination(
      icon: Icon(Icons.explore_outlined),
      label: "Explore",
      selectedIcon: Icon(
        Icons.explore_rounded,
      ),
    ),
    NavigationDestination(
      icon: Icon(Icons.group),
      label: "Community",
    ),
    NavigationDestination(
      icon: Icon(Icons.notifications_rounded),
      label: "Notifications",
    ),
    NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
  ];
}
