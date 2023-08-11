import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_bar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(const BottomBarState(currentPage: 0));

  void changePage(int selectedIndex) {
    emit(state.copyWith(selectedPage: selectedIndex));
  }
}
