import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tov_na/base/state_management/naviation.dart';
import 'package:tov_na/core/widget/widget.dart';

import '../community/community.dart';
import '../explore/explore.dart';
import '../home/home.dart';

class NavRoot extends ConsumerStatefulWidget {
  const NavRoot({super.key});

  @override
  ConsumerState createState() => _NavRootState();
}

class _NavRootState extends ConsumerState<NavRoot> {
  ///

  final List<Widget> pages = const <Widget>[
    HomePage(key: PageStorageKey<String>(App.storageKeyHome)),
    ExplorePage(key: PageStorageKey<String>(App.storageKeyExplore)),
    CommunityPage(key: PageStorageKey<String>(App.storageKeyCommunity)),
    Placeholder(key: PageStorageKey<String>('pageFour')),
    Placeholder(key: PageStorageKey<String>('pageFive')),
  ];

  ///

  final List<NavigationDestination> itemNav = const [
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

  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    final navIndex = ref.watch(navProvider);

    return Scaffold(
      body: SafeArea(
        child: PageStorage(
          bucket: _bucket,
          child: pages[navIndex.index], // Uses PageStorageKey internally
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: navIndex.index,
        onDestinationSelected: (index) {
          ref.read(navProvider.notifier).onIndexChanged(index);
        },
        destinations: itemNav,
      ),
    );
  }
}
