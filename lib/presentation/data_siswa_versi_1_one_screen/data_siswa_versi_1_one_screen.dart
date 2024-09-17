import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/datalist_item_widget.dart';

class DataSiswaversi1OneScreen extends StatelessWidget {
  DataSiswaversi1OneScreen({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomSearchView(
                controller: searchController,
                hintText: "Search...",
                contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 20.h),
                borderDecoration: SearchViewStyleHelper.outlineBlack,
              ),
              SizedBox(height: 18.h),
              _buildFilterRow(context),
              SizedBox(height: 18.h),
              _buildDataList(context),
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

  /// Section Widget: AppBar
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppBarLeadingImage(
        imagePath: ImageConstant.imgRiMenuAddFill,
        margin: EdgeInsets.only(left: 30.h, top: 10.h, bottom: 15.h),
      ),
      title: AppBarTitle(
        text: "Data (Jurusan)",
        margin: EdgeInsets.only(left: 14.h),
      ),
    );
  }

  /// Section Widget: Filter Row
  Widget _buildFilterRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            height: 40.h,
            width: 50.h,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.outlineBlack,
            child: CustomImageView(
              imagePath: ImageConstant.imgFilter,
            ),
          ),
          _buildImportDataButton(context),
        ],
      ),
    );
  }

  /// Section Widget: Import Data Button
  Widget _buildImportDataButton(BuildContext context) {
    return CustomElevatedButton(
      width: 154.h,
      text: "Import Data",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgAdd,
          height: 16.h,
          width: 16.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineErrorContainer,
      buttonTextStyle: CustomTextStyles.titleSmallInterOnPrimaryContainer,
      onPressed: () {
        // TODO: Add your import data functionality here.
      },
    );
  }

  /// Section Widget: Data List
  Widget _buildDataList(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        separatorBuilder: (context, index) {
          return SizedBox(height: 4.h);
        },
        itemBuilder: (context, index) {
          return DatalistItemWidget();
        },
      ),
    );
  }

  /// Section Widget: Bottom Bar
  Widget _buildBottomBar(BuildContext context) {
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
