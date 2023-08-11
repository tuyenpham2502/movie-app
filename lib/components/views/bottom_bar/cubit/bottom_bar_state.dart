part of 'bottom_bar_cubit.dart';

class BottomBarState extends Equatable {
  final int currentPage;

  @override
  List<Object> get props => [currentPage];

  const BottomBarState({
    required this.currentPage,
  });

  BottomBarState copyWith({
    int? selectedPage,
  }) {
    return BottomBarState(
      currentPage: selectedPage ?? currentPage,
    );
  }
}
