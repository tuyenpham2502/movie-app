import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/components/routes/app_routes.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.initial());

  void setCurrentScreen(String screenName) {
    List<String> currentStack = state.routeStack ?? [];
    currentStack.add(screenName);
    Application.routeStack.add(screenName);
    emit(state.copyWith(currentRoute: screenName, routeStack: currentStack));

    print("route stack $currentStack");
  }

  void removeCurrentScreen(String screenName) {
    List<String> currentStack = state.routeStack ?? [];
    if (currentStack.isNotEmpty) {
      currentStack.removeLast();
      Application.routeStack.removeLast();
    }
    emit(state.copyWith(currentRoute: screenName, routeStack: currentStack));

    print("route stack $currentStack");
  }
}
