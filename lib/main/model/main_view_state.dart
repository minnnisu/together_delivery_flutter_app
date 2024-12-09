class MainViewState {
  int selectedViewIndex;

  MainViewState({
    required this.selectedViewIndex,
  });

  MainViewState copyWith({
    int? selectedViewIndex,
  }) =>
      MainViewState(
        selectedViewIndex: selectedViewIndex ?? this.selectedViewIndex,
      );

  MainViewState.init() : selectedViewIndex = 0;
}
