import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tov_na/core/widget/widget.dart';

import '../../base/state_management/naviation.dart';

class NavRoot extends ConsumerStatefulWidget {
  const NavRoot({super.key});

  @override
  ConsumerState createState() => _BottomNavigationProviderState();
}

class _BottomNavigationProviderState extends ConsumerState<NavRoot> {
  @override
  Widget build(BuildContext context) {
    final navIndex = ref.watch(navProvider);
    return Scaffold(
      body: SafeArea(child: App.page[navIndex.index]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: navIndex.index,
        onDestinationSelected: (index) {
          ref.read(navProvider.notifier).onIndexChanged(index);
        },
        destinations: App.itemNav,
      ),
    );
  }
}
