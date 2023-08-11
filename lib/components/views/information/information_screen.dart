import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';
import 'package:movie_app/components/views/information/widgets/tab_bar_infomation.dart';
import 'package:movie_app/components/views/widgets/rating_bar_cus.dart';
import 'package:movie_app/constants/constants.dart';
import 'package:movie_app/theme/app_styles.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  final data = Constants.informationMovie;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final String image = (data as Map)["imageUrl"];
    final String movieName = (data as Map)["movieName"];
    final double rating = (data as Map)["rating"];
    final String movieGenre = (data as Map)["movieGenre"];
    final String duration = (data as Map)["duration"];
    final String synopsis = (data as Map)["synopsis"];
    final List castAndCrew = (data as Map)["castAndCrew"];
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          backGround(size),
          Container(
            height: size.height / 3.5,
            decoration: const BoxDecoration(
              gradient: AppColors.bannerGradient,
            ),
          ),
          backButton(context),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height / 4.5, left: 24.h),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width / 2.5,
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          gradient: AppColors.bannerGradient,
                        ),
                        child: CachedNetworkImage(
                          imageUrl: image,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 8.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movieName,
                              style: AppStyle.textSize16Font600,
                            ),
                            Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.symmetric(vertical: 8.h),
                                    child: RatingBarCus(rating: rating)),
                                Text(
                                  "($rating)",
                                  style: AppStyle.textSize14Font400,
                                )
                              ],
                            ),
                            informationSub(movieGenre),
                            informationSub(duration),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              TabBarInformation(size: size, tabController: _tabController, synopsis: synopsis, castAndCrew: castAndCrew)
            ],
          ),
        ]),
      ),
    );
  }

  Padding backButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.h),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: AppColors.white,
        ),
      ),
    );
  }

  Column backGround(Size size) {
    return Column(
      children: [
        Container(
          height: size.height / 3.5,
          decoration: BoxDecoration(
            gradient: AppColors.bannerGradient,
            image: DecorationImage(
              image: CachedNetworkImageProvider(Constants.imageDetail,
                errorListener: () {
                  print("error");
                }
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 200,
          decoration: const BoxDecoration(
            gradient: AppColors.bannerGradient2,
          ),
        ),
      ],
    );
  }

  Container informationSub(String movieGenre) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      child: Text(
        movieGenre,
        style: AppStyle.textSize12Font400,
      ),
    );
  }
}
