
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../materials/app_colors.dart';
import '../widgets/text_field_cus.dart';

class SearchHomeScreen extends StatelessWidget {
  const SearchHomeScreen({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
    child: SizedBox(
    height: size.height / 15,
    child: Row(
      children: [
        Expanded(
          child: Container(
              height: size.height / 15,
              decoration: BoxDecoration(
                  color: AppColors.midNightBlue,
                  borderRadius: BorderRadius.circular(22.r)),
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                Expanded(child: Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: const TextFieldCusSearch(hintText: "Search movie"),
                ))
              ])),
        ),
        Container(
          margin: EdgeInsets.only(left: 16.w),
          width: size.height / 15,
          height: size.height / 15,
          decoration: BoxDecoration(
              gradient: AppColors.skyBlueGradient,
              borderRadius: BorderRadius.circular(16.r)),
          child: Image.asset("assets/icons/control.png"),
        ),
      ],
    )
    )
    );
  }
}