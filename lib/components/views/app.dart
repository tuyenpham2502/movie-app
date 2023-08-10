import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';
import 'package:movie_app/untils/navigation_services.dart';
import 'package:overlay_support/overlay_support.dart';

import '../routes/app_routes.dart';

class App extends StatefulWidget {

  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRoute _appRoute = AppRoute();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (_, child) {
            return MaterialApp(
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: child!,
                );
              },
              navigatorKey: NavigationService.navigatorKey,
              onGenerateRoute: _appRoute.onGenerateRoute,
              title: 'Movie App',
              theme: ThemeData(
                textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: Colors.white,
                  displayColor: Colors.white,
                ),
                fontFamily: "Montserrat",
                primaryColor: Colors.blue,
                scaffoldBackgroundColor: AppColors.darkBlue,

              ),
            );
          }
      ),
    );
  }
}

