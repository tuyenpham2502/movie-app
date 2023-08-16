import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';
import 'package:movie_app/components/views/login/widgets/another_login_type.dart';
import 'package:movie_app/components/views/widgets/text_field_cus.dart';
import 'package:movie_app/constants/constants.dart';
import 'package:movie_app/theme/app_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/login_logo.png",
                  fit: BoxFit.fill,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 32.h),
                  width: size.width / 2,
                  child: Text(
                    "Welcome Back, Movie Lover",
                    style: AppStyle.textSize24Font600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 44.h),
                  child: TextFormFieldCus(
                    controller: _emailController,
                    hintText: "Email",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: TextFormFieldCus(
                      obscureText: true,
                      hintText: "Password",
                      controller: _passwordController),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        print("click");
                      },
                      child: Text(
                        "Forgot Password?",
                        style: AppStyle.textSize12Font400,
                      )),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 18.h),
                    width: 260.w,
                    height: 60.h,
                    child: ElevatedButton(
                      onPressed: () {
                        print("click");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.turquoise10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r))),
                      child: Text(
                        "Login",
                        style: AppStyle.textSize18Font500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 28.h),
                  child: Center(
                      child: RichText(
                    text: TextSpan(
                        text: "Don't have an account? ",
                        style: AppStyle.textSize14Font400White70,
                        children: [
                          TextSpan(
                              text: "Sign Up",
                              style: AppStyle.textSize14Font500
                                  .copyWith(color: AppColors.skyBlue))
                        ]),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: Constants.loginType
                      .map((type) => AnotherLoginType(
                            type: type,
                          ))
                      .toList(),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
