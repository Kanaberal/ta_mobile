import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_bottom_bar.dart';
import 'widgets/gridzipcode_item_widget.dart';

// ignore_for_file: must_be_immutable
class DataSiswaversiTwoScreen extends StatelessWidget {
  DataSiswaversiTwoScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 770.h,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 8.h,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildHeaderPhone(context),
              CustomImageView(
                imagePath: ImageConstant.imgRiMenuAddFill,
                height: 30.h,
                width: 30.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 6.h),
              ),
              _buildGridZipCode(context),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget: Header Phone
  Widget _buildHeaderPhone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40.h),
              child: Text(
                "Data",
                style: CustomTextStyles.headlineLargePoppins,
              ),
            ),
            Text(
              "Angkatan & Kelas",
              style: CustomTextStyles.headlineLargePoppinsOnPrimary,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget: Grid ZipCode
  Widget _buildGridZipCode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h, right: 6.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 135.h,
          crossAxisCount: 2,
          mainAxisSpacing: 20.h,
          crossAxisSpacing: 20.h,
        ),
        physics: BouncingScrollPhysics(),
        itemCount: 8,
        itemBuilder: (context, index) {
          return GridZipcodeItemWidget();
        },
      ),
    );
  }

  /// Section Widget: Bottom Bar
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
          navigatorKey.currentContext!,
          getCurrentRoute(type),
        );
      },
    );
  }

  /// Handling route based on bottom click actions
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
