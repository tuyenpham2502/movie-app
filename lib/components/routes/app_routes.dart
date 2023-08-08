import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/components/routes/routes_name.dart';
import 'package:movie_app/components/views/change_language/change_language_screen.dart';
import 'package:movie_app/components/views/edit_profile/edit_profile_screen.dart';
import 'package:movie_app/components/views/help_center/help_center_screen.dart';
import 'package:movie_app/components/views/information/information_screen.dart';
import 'package:movie_app/components/views/my_wallet/my_wallet_screen.dart';
import 'package:movie_app/components/views/select_cinema/select_cinema_screen.dart';

import '../views/home/home_screen.dart';
import '../views/profile/profile_screen.dart';

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
        case RoutesName.selectCinema:
         _routeWidget = const SelectCinemaScreen();
         case RoutesName.profile:
          _routeWidget = const ProfileScreen();
          case RoutesName.myWallet:
          _routeWidget = const MyWalletScreen();
          case RoutesName.editProfile:
          _routeWidget = const EditProfileScreen();
          case RoutesName.changeLanguage:
          _routeWidget = const ChangeLanguageScreen();
          case RoutesName.helpCenter:
          _routeWidget = const HelpCenterScreen();
      default:
        _routeWidget;
    }
    return MaterialPageRoute(
      builder: (_) => _routeWidget,
      settings: settings,
    );
  }
  }
