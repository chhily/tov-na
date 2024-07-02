import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tov_na/model/destination/cambodia.dart';

class DestinationState {
  final CambodianProvince cambodianProvince;
  final List<int> selectedIndices;

  const DestinationState({
    required this.cambodianProvince,
    this.selectedIndices = const [],
  });

  DestinationState copyWith({
    CambodianProvince? cambodianProvince,
    List<int>? selectedIndices,
  }) {
    return DestinationState(
      cambodianProvince: cambodianProvince ?? this.cambodianProvince,
      selectedIndices: selectedIndices ?? this.selectedIndices,
    );
  }
}

final destinationProvider =
    StateNotifierProvider.autoDispose<DestinationNotifier, DestinationState>(
        (ref) => DestinationNotifier());

class DestinationNotifier extends StateNotifier<DestinationState> {
  DestinationNotifier()
      : super(
          DestinationState(
            cambodianProvince: CambodianProvince(
              name: "Select a place",
              filters: [],
              destinations: [],
              description: "N/A",
            ),
          ),
        );

  void onChangeDestination(CambodianProvince newPlace) {
    state = state.copyWith(cambodianProvince: newPlace);
  }

  void onToggleSelection(int index) {
    final isSelected = state.selectedIndices.contains(index);
    final updatedIndices = isSelected
        ? state.selectedIndices.where((i) => i != index).toList()
        : [...state.selectedIndices.where((i) => i != 0), index];

    state = state.copyWith(selectedIndices: updatedIndices);
  }
}
