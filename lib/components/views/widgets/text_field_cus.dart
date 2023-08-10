import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';

class TextFieldCusSearch extends StatefulWidget {
  final bool obscureText;
  final String hintText;
  const TextFieldCusSearch({Key? key, this.obscureText = false, required this.hintText, })
      : super(key: key);

  @override
  State<TextFieldCusSearch> createState() => _TextFieldCusSearch();
}

class _TextFieldCusSearch extends State<TextFieldCusSearch> {
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

class TextFieldCus extends StatefulWidget {
  const TextFieldCus({super.key, required this.hintText, required this.controller});

  final String hintText;
  final TextEditingController controller;

  @override
  State<TextFieldCus> createState() => _TextFieldCusState();

}

class _TextFieldCusState extends State<TextFieldCus> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      style: const TextStyle(
        color: AppColors.white,
      ),
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r)

        ),
        label: Text(widget.hintText, style: const TextStyle(
          color: AppColors.white,
        ),),
        ),
    );
  }
}

