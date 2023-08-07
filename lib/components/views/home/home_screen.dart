import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/views/home/banner_home_screen.dart';
import 'package:movie_app/components/views/home/category.dart';
import 'package:movie_app/components/views/home/header_home_screen.dart';
import 'package:movie_app/components/views/home/promo_home_screen.dart';
import 'package:movie_app/components/views/home/search_home_screen.dart';
import 'package:movie_app/components/views/home/widgets/build_text.dart';
import 'package:movie_app/constants/constants.dart';
import 'coming_soon_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header
                HeaderHomePage(size: size),
                //search
                SearchHomeScreen(size: size),
                //category
                Category(size: size),
                //now playing text
                const BuildText(text: "Now Playing"),
                //banners
                BannerHomeScreen(size: size),
                //coming soon text
                const BuildText(text: "Coming Soon"),
                //list card coming soon
                const ComingSoon(),
                //promo text
                const BuildText(text: "Promo"),
                //list card promo
                Column(
                  children: Constants.promo.map((e) => Promo(size: size, data: e)).toList()
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}



