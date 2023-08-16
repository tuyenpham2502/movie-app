import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/materials/app_colors.dart';
import 'package:movie_app/constants/constants.dart';
import 'package:movie_app/theme/app_styles.dart';
import 'package:video_player/video_player.dart';

class TabBarInformation extends StatefulWidget {
  const TabBarInformation({
    super.key,
    required this.size,
    required TabController tabController,
    required this.synopsis,
    required this.castAndCrew,
  }) : _tabController = tabController;

  final Size size;
  final TabController _tabController;
  final String synopsis;
  final List castAndCrew;

  @override
  State<TabBarInformation> createState() => _TabBarInformationState();
}

class _TabBarInformationState extends State<TabBarInformation> {
  late VideoPlayerController _videoController;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    _initializeVideoPlayerFuture = _videoController.initialize().then((value) {
      _videoController.play();
      _videoController.setLooping(true);
    }
    );
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height,
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 16.h),
              alignment: Alignment.center,
              child: TabBar(
                  indicatorColor: AppColors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: widget._tabController,
                  labelStyle: AppStyle.textSize16Font500,
                  tabs: Constants.tabBar)),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: widget._tabController,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16.h),
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16.h),
                        child: Text(
                          tr("synopsis"),
                          style: AppStyle.textSize18Font400,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.h),
                        child: Text(
                          widget.synopsis,
                          style: AppStyle.textSize12Font400white50,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 32.h, bottom: 16.h),
                        child: Text(
                          tr("castAndCrew"),
                          style: AppStyle.textSize18Font400,
                        ),
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: widget.castAndCrew
                                .map((e) => Container(
                                      margin: EdgeInsets.only(right: 16.w),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h, bottom: 4.h),
                                            child: Container(
                                              width: widget.size.width / 4.5,
                                              height: widget.size.width / 4.5,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                  image: DecorationImage(
                                                      image: CachedNetworkImageProvider(
                                                          e['imageUrl'],
                                                          errorListener: (){
                                                            print("error");
                                                          }
                                                      ),
                                                      fit: BoxFit.cover)),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 8.h),
                                            child: Text(
                                              e['name'],
                                              style: AppStyle
                                                  .textSize12Font400white50,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))
                                .toList(),
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 32.h, bottom: 16.h),
                        child: Text(
                          tr("trailersAndSongs"),
                          style: AppStyle.textSize18Font400,
                        ),
                      ),
                      // VideoPlayer(_videoController)

                  ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.h),
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Review",
                        style: AppStyle.textSize16Font600,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.h),
                        child: Text(
                          '123',
                          style: AppStyle.textSize14Font400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
