import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/theme/app_styles.dart';

import '../../../../constants/constants.dart';
import '../../../materials/app_colors.dart';

class Category extends StatefulWidget {
  const Category({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: SizedBox(
        height: widget.size.height / 15,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Constants.categories.length,
            itemBuilder: (context, index) {
              final String label =
                  (Constants.categories[index] as Map)["label"];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(right: 16.w),
                  width: widget.size.width / 4,
                  decoration: _selectedIndex == index
                      ? BoxDecoration(
                          gradient: AppColors.electricBlueGradient,
                          borderRadius: BorderRadius.circular(16.r))
                      : BoxDecoration(
                          color: AppColors.midNightBlue,
                          borderRadius: BorderRadius.circular(16.r)),
                  child: Center(
                    child: Text(
                      label,
                      style: AppStyle.textSize14Font500
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
