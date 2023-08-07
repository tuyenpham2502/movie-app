import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';

class TextFieldCus extends StatefulWidget {
  final bool obscureText;
  final String hintText;
  const TextFieldCus({Key? key, this.obscureText = false, required this.hintText, })
      : super(key: key);

  @override
  State<TextFieldCus> createState() => _TextFieldCus();
}

class _TextFieldCus extends State<TextFieldCus> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: AppColors.white,
      ),
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        fillColor: AppColors.midNightBlue,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: AppColors.white50,
        ),
        border: InputBorder.none
        ),
      );
  }
}
