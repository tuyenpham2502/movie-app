import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';
import 'package:movie_app/components/views/home/home_screen.dart';
import "components/routes/app_routes.dart";
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRoute _appRoute = AppRoute();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
      return MaterialApp(
        onGenerateRoute: _appRoute.onGenerateRoute,
        home: const HomeScreen(),
        title: 'Flutter Demo',
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
    );
  }
}

