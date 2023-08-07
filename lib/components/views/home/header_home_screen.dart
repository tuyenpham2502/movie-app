import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/theme/app_styles.dart';

import '../../materials/app_colors.dart';

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size.height * 0.1,
        child: Container(
          color: AppColors.darkBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 198.w,
                child: Text(
                  "Find Your Best Movie",
                  style: AppStyle.textSize24Font600
                ),
              ),
              SizedBox(
                width: 48.w,
                height: 48.h,
                child: const CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                      "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png"),
                ),
              ),
            ],
          ),
        ));
  }
}
