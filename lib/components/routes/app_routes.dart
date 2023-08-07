import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/components/routes/routes_name.dart';
import 'package:movie_app/components/views/information/information_screen.dart';
import 'package:movie_app/components/views/select_cinema/select_cinema_screen.dart';

import '../views/home/home_screen.dart';

class AppRoute {
  Route? onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    Widget initialWidget = const HomeScreen();
    Widget _routeWidget = initialWidget;
    switch (settings.name) {
      case RoutesName.home:
         _routeWidget = const HomeScreen();
        break;
      case RoutesName.information:
         _routeWidget = const InformationScreen();
        break;
        case RoutesName.seleactCinema:
         _routeWidget = const SelectCinemaScreen();
      default:
        _routeWidget;
    }
    return MaterialPageRoute(
      builder: (_) => _routeWidget,
      settings: settings,
    );
  }
  }
