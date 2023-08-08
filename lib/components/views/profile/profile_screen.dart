import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';
import 'package:movie_app/components/views/profile/menu_profile.dart';
import 'package:movie_app/theme/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  initState() {}

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: size.height/6),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200.w,
                        height: 200.h,
                        child: const CircleAvatar(
                          backgroundImage: CachedNetworkImageProvider(
                              "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0.h, bottom: 10.0.h),
                        child:
                            Text("Nguyễn Văn A", style: AppStyle.textSize18Font500),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0.h),
                        child: Text("tuyenpham250203@gmail.com",
                            style: AppStyle.textSize14Font600White50),
                      ),
                      MenuProfile(size: size),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 25.h,
                left: 0,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: AppColors.white),
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
