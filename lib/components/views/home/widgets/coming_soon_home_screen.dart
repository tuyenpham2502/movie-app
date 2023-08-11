import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';
import 'package:movie_app/components/routes/app_routes.dart';
import 'package:movie_app/constants/constants.dart';


class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
          children: Constants.comingSoon
              .map((item) => Expanded(
                    child: Builder(builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.information,
                              arguments: item);
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 12.w),
                          height: 200.h,
                          decoration: BoxDecoration(
                              gradient: AppColors.bannerGradient,
                              borderRadius: BorderRadius.circular(14.r),
                              image: DecorationImage(
                                  image: CachedNetworkImageProvider((item as Map)["imageUrl"],
                                  errorListener: () {
                                    print("error");
                                  }
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      );
                    }),
                  ))
              .toList()),
    );
  }
}
