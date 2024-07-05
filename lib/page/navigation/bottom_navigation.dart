import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tov_na/core/constant/app_extension.dart';
import 'package:tov_na/core/widget/widget.dart';
import 'package:tov_na/page/home/widget/header.dart';

import '../../base/state_management/naviation.dart';

class NavRoot extends ConsumerWidget {
  const NavRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navIndex = ref.watch(navProvider);
    return Scaffold(
      body: SafeArea(
          child: PageStorage(
        bucket: PageStorageBucket(),
        child: App.page[navIndex.index],
      )),
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
