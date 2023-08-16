import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../materials/app_colors.dart';

class AnotherLoginType extends StatelessWidget {
  const AnotherLoginType({
    super.key,
    required this.type,
  });


  final Map<String,String> type;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(type);
      },
      child: Container(
          padding: EdgeInsets.all(12.w),
          width: 64.w,
          height: 64.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.turquoise10,
          ),
          child: Image.asset(
            type["icon"] as String,
          )),
    );
  }
}
