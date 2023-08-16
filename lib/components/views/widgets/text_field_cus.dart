import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';

class TextFieldCusSearch extends StatefulWidget {
  final bool obscureText;
  final String hintText;
  const TextFieldCusSearch({Key? key, this.obscureText = false, required this.hintText, })
      : super(key: key);

  @override
  State<TextFieldCusSearch> createState() => _TextFieldCusSearchState();
}

class _TextFieldCusSearchState extends State<TextFieldCusSearch> {
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

class TextFieldCus extends StatelessWidget {
  const TextFieldCus({super.key, required this.hintText, required this.controller, this.obscureText = false});

  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
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
        label: Text(hintText, style: const TextStyle(
          color: AppColors.white,
        ),),
        ),
    );
  }
}

class TextFormFieldCus extends StatelessWidget {
  const TextFormFieldCus({super.key, required this.controller, this.obscureText = false, required this.hintText});

  final TextEditingController controller;
  final bool obscureText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter some text";
        }
        return null;
      },
      obscureText: obscureText,
      controller: controller,
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
        label: Text(hintText, style: const TextStyle(
          color: AppColors.white,
        ),),
        ),
    );
  }
}


