import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';
import 'package:movie_app/components/routes/app_routes.dart';

import '../../../constants/constants.dart';
import '../../../theme/app_styles.dart';

class MenuProfile extends StatelessWidget {
  const MenuProfile({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: Constants.menuProfile.map((item) =>
          TextButton(
            onPressed: () {
              Application.router?.navigateTo(context, item['hyperlink']);
            },
            child: Container(
              width: size.width,
              padding: EdgeInsets.symmetric(vertical: 20.h),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.white,
                    width: 1.w
                  )
                )
              ),
              child: RichText(
                text: TextSpan(
                  style: AppStyle.textSize16Font400,
                  children: [
                    WidgetSpan(
                        child: Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 5.h),
                            child: Image.asset(
                                item['imageUrl']))),
                    TextSpan(
                        text: item["label"],
                        style: AppStyle.textSize16Font400),
                  ],
                ),
              ),
            ),
          ),
        ).toList(),
      ),
    );
  }
}