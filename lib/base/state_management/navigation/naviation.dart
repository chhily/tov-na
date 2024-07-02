import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'nav_state.dart';

final navProvider =
    NotifierProvider<NavNotifier, NavState>(() => NavNotifier());

class NavNotifier extends Notifier<NavState> {
  @override
  NavState build() {
    // TODO: implement build
    return const NavState();
  }

  void onIndexChanged(int index) {
    state = state.copyWith(index: index);
  }

  void onResetIndex(int index) {
    state = state.copyWith(index: index);
  }
}
