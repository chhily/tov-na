class NavState {
  const NavState({this.index = 0});

  final int index;

  NavState copyWith({int? index}) {
    return NavState(index: index ?? this.index);
  }


}