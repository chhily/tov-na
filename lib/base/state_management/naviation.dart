import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavState {
  final int index;

  const NavState({this.index = 0});

  NavState copyWith({int? index}) {
    return NavState(index: index ?? this.index);
  }
}

final navProvider = StateNotifierProvider.autoDispose<NavNotifier, NavState>(
    (ref) => NavNotifier());

class NavNotifier extends StateNotifier<NavState> {
  NavNotifier() : super(const NavState());

  void onIndexChanged(int index) {
    state = state.copyWith(index: index);
  }
}
