import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/views/home/widgets/banner_home_screen.dart';
import 'package:movie_app/components/views/home/widgets/build_text.dart';
import 'package:movie_app/components/views/home/widgets/category.dart';
import 'package:movie_app/components/views/home/widgets/header_home_screen.dart';
import 'package:movie_app/components/views/home/widgets/promo_home_screen.dart';
import 'package:movie_app/components/views/home/widgets/search_home_screen.dart';
import 'package:movie_app/constants/constants.dart';
import 'widgets/coming_soon_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
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
                BuildText(text: tr("nowPlaying")),
                //banners
                BannerHomeScreen(size: size),
                //coming soon text
                BuildText(text: tr("comingSoon")),
                //list card coming soon
                const ComingSoon(),
                //promo text
                BuildText(text: tr("promo")),
                //list card promo
                Column(
                  children: Constants.promo.map((e) => Promo(size: size, data: e)).toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}



