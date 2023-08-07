import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarCus extends StatelessWidget {
  const RatingBarCus({
    super.key,
    required this.rating,
  });
  final Object rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.w),
      child: RatingBar(
        itemSize: 18.sp,
        ratingWidget: RatingWidget(
            full: const Icon(
              Icons.star,
              color: AppColors.yellow,
            ),
            half: const Icon(
              Icons.star_half,
              color: AppColors.yellow,
            ),
            empty: const Icon(
              Icons.star_border,
              color: AppColors.yellow,
            )),
        onRatingUpdate: (rating) {
          print(rating);
        },
        initialRating: rating as double,
        ignoreGestures: true,
        minRating: 1,
        allowHalfRating: true,
      ),
    );
  }
}