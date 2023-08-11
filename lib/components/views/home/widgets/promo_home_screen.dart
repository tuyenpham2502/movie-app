import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';
import 'package:movie_app/theme/app_styles.dart';



class Promo extends StatelessWidget {
  const Promo({
    super.key,
    required this.size,
    required this.data,
  });

  final Size size;
  final Object data;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data = this.data as Map<String, dynamic>;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Container(
        height: size.height / 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.r),
          gradient: AppColors.promoGradient,
          boxShadow: const [AppColors.promoShadow],
        ),
        child:  Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                  padding: EdgeInsets.only(left: 8.r),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data["promoName"],
                          style: AppStyle.textSize14Font400),
                      Text(data["promoSubtitle"],
                          style: AppStyle.textSize12Font300white50),
                    ],
                  )),
            ),
            Expanded(
              child: RichText(
                  text:  TextSpan(
                      children: [
                        TextSpan(
                          text:"OFF ",
                          style: AppStyle.textSize16Font300
                        ),
                        TextSpan(
                          text: '${data["offValue"]}%',
                          style: AppStyle.textSize16Font500
                        ),
                      ]
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}