import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_search_view.dart';
import 'widgets/departmentoptions_item_widget.dart';
import 'widgets/listbase_one_item_widget.dart';

class HomeInitialPage extends StatefulWidget {
  const HomeInitialPage({Key? key}) : super(key: key);

  @override
  HomeInitialPageState createState() => HomeInitialPageState();
}

// ignore_for_file: must_be_immutable
class HomeInitialPageState extends State<HomeInitialPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: _buildAppBar(context),
        ),
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26.h),
          child: Column(
            children: [
              _buildGreetingSection(context),
              SizedBox(height: 24.h),
              _buildDepartmentOptions(context),
              SizedBox(height: 46.h),
              _buildRecentStudents(context),
              SizedBox(height: 4.h),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitleOne(text: "Halo Nama Guru"),
      actions: [
        Container(
          width: 50.h,
          margin: EdgeInsets.only(top: 2.h, right: 31.h, bottom: 3.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.h),
            gradient: LinearGradient(
              begin: Alignment(0, 0),
              end: Alignment(0, 1),
              colors: [appTheme.deepPurple50, appTheme.deepPurple100],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppbarImage(
                imagePath: ImageConstant.imgLogo2,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGreetingSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 34.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            decoration: AppDecoration.fs1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Text(
                          "Selamat Siang",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.displaySmallSemiBold.copyWith(
                            height: 1.04,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup1,
                        height: 138.h,
                        width: 140.h,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Siapa yang ingin kamu cari?",
                    contentPadding: EdgeInsets.fromLTRB(18.h, 10.h, 14.h, 10.h),
                  ),
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDepartmentOptions(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 34.h,
        width: 380.h,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 34.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(width: 18.h);
          },
          itemCount: 8,
          itemBuilder: (context, index) {
            return DepartmentOptionsItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentStudents(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.h),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          VerticalDivider(
                            width: 1.h,
                            thickness: 1.h,
                            color: appTheme.blueA200,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "Riwayat murid yang baru saja dibuka",
                              style: CustomTextStyles.titleSmallBlack900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 236.h,
                      width: 372.h,
                      child: ListView.separated(
                        padding: EdgeInsets.only(left: 42.h),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 10.h);
                        },
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return ListBaseOneItemWidget();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
