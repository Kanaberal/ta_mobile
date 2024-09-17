import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_bottom_bar.dart';
import 'widgets/rekayasalistsection_item_widget.dart';

// ignore_for_file: must_be_immutable
class DataSiswaversi1Screen extends StatelessWidget {
  DataSiswaversi1Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 30.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 30.h),
              _buildMenuAddSection(context),
              SizedBox(height: 30.h),
              _buildRekayasaListSection(context),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigation(context),
        ),
      ),
    );
  }

  /// Section Widget: Menu Add Section
  Widget _buildMenuAddSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRiMenuAddFill,
            height: 30.h,
            width: 30.h,
            margin: EdgeInsets.only(top: 6.h),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                "Data",
                style: CustomTextStyles.headlineLargePoppins,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget: Rekayasa List Section
  Widget _buildRekayasaListSection(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 4.h, right: 6.h),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          separatorBuilder: (context, index) {
            return SizedBox(height: 16.h);
          },
          itemBuilder: (context, index) {
            return RekayasaListSectionItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget: Bottom Navigation
  Widget _buildBottomNavigation(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
            navigatorKey.currentContext!,
            getCurrentRoute(type),
          );
        },
      ),
    );
  }

  /// Handling route based on bottom bar click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeInitialPage;
      case BottomBarEnum.TambahSiswa:
        return "/";
      case BottomBarEnum.Data:
        return "/";
      case BottomBarEnum.Rapor:
        return "/";
      default:
        return "/";
    }
  }
}
