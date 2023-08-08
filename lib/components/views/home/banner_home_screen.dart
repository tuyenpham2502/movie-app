import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/theme/app_styles.dart';

import '../../../constants/constants.dart';
import '../../materials/app_colors.dart';
import '../../routes/routes_name.dart';
import '../widgets/rating_bar_cus.dart';

class BannerHomeScreen extends StatelessWidget {
  const BannerHomeScreen({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RoutesName.selectCinema);
        },
        child: CarouselSlider(
          items: Constants.banners
              .map((item) => Stack(children: [
                    Container(
                      padding: EdgeInsets.only(left: 10.w, bottom: 24.h),
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                (item as Map)["imageUrl"],
                                errorListener: () {
                                  print("error");
                                },
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10.w, bottom: 24.h),
                        width: size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.r),
                            gradient: AppColors.bannerGradient),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text((item)["title"],
                                style: AppStyle.textSize18Font600),
                            Row(
                              children: [
                                RatingBarCus(
                                  rating: item["rating"],
                                ),
                                Text("(${(item)["rating"].toString()})",
                                    style: AppStyle.textSize14Font400),
                              ],
                            ),
                          ],
                        )),
                  ]))
              .toList(),
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
          ),
        ),
      ),
    );
  }
}
