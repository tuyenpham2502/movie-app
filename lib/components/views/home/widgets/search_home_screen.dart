
import 'package:easy_localization/easy_localization.dart' as localization;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/services/authentication.dart';

import '../../../materials/app_colors.dart';
import '../../widgets/text_field_cus.dart';

class SearchHomeScreen extends StatefulWidget {
  const SearchHomeScreen({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<SearchHomeScreen> createState() => _SearchHomeScreenState();
}

class _SearchHomeScreenState extends State<SearchHomeScreen> {

  void signUpUser() async {
    await context.read<FireBaseAuthMethod>().signUp(
        email: "tuyenhai12@gmail.com",
        password: "1234567789",
        context: context);
  }
  
  @override
  Widget build(BuildContext context) {

    

    return Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
    child: SizedBox(
    height: widget.size.height / 15,
    child: Row(
      children: [
        Expanded(
          child: Container(
              height: widget.size.height / 15,
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
                  child: TextFieldCusSearch(hintText: tr("searchMovie")),
                ))
              ])),
        ),
        GestureDetector(
          onTap: signUpUser,
          child: Container(
            margin: EdgeInsets.only(left: 16.w),
            width: widget.size.height / 15,
            height: widget.size.height / 15,
            decoration: BoxDecoration(
                gradient: AppColors.skyBlueGradient,
                borderRadius: BorderRadius.circular(16.r)),
            child: Image.asset("assets/icons/control.png"),
          ),
        ),
      ],
    )
    )
    );
  }
}