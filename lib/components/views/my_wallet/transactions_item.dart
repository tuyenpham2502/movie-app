import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/app_styles.dart';


class TransactionsItem extends StatelessWidget {
  const TransactionsItem({
    super.key,
    required this.size,
    required this.imageUrl,
    required this.movieName,
    required this.price,
    required this.date,
  });

  final Size size;
  final String imageUrl;
  final String movieName;
  final String price;
  final String date;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {  },
      child: SizedBox(
        height:size.height*0.2,
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                image: DecorationImage(
                    image: CachedNetworkImageProvider(imageUrl),
                    fit: BoxFit.cover
                ),
              ),
            )),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: size.width * 0.4,
                          child: Text(movieName, style: AppStyle.textSize16Font400,)),
                      Padding(padding: EdgeInsets.symmetric(vertical: 10.h), child: Text(price, style: AppStyle.textSize14Font400CoralPink,),),
                      Text(date, style: AppStyle.textSize14Font400White70,)
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}