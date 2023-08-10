import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/views/widgets/text_field_cus.dart';
import 'package:movie_app/theme/app_styles.dart';
import 'package:overlay_support/overlay_support.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: size.height / 6, left: 25.w, right: 25.w),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200.w,
                        height: 200.h,
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: TextFieldCus(
                          hintText: "Full Name",
                          controller: _nameController,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: TextFieldCus(
                          hintText: "Email",
                          controller: _emailController,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            toast("Update Success");
                            showSimpleNotification(
                                const Text("this is a message from simple notification"),
                                background: Colors.green);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50.w, vertical: 20.h)),
                          child: Text("Update My Profile",
                              style: AppStyle.textSize18Font500)),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 25,
                left: 0,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
