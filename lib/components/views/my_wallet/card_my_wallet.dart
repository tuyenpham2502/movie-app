import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';
import 'package:movie_app/theme/app_styles.dart';


class CardMyWallet extends StatelessWidget {
const CardMyWallet({
super.key,
required this.size,
});

final Size size;

@override
Widget build(BuildContext context) {
return Container(
padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
width: size.width,
height: size.height / 3.5,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(30.r),
gradient: AppColors.myWalletGradient,
boxShadow: const [AppColors.myWalletBoxShadow],
),
child: Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Row(
children: [
Expanded(
flex: 3,
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text("Card Name",
style: AppStyle.textSize12Font400white70),
Text("Tuyên Phạm",
style: AppStyle.textSize16Font600),
],
)),
Expanded(
child:
Image.asset("assets/images/my_wallet_logo.png")),
],
),
Padding(
padding: EdgeInsets.symmetric(vertical: 30.h),
child: Text("**** **** **** 1234",
style: AppStyle.textSize12Font500),
),
Text(
"IDR 50.000",
style: AppStyle.textSize28Font600,
)
],
),
);
}
}