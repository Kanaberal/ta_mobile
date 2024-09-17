import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class GridZipcodeItemWidget extends StatelessWidget {
  const GridZipcodeItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.zero,
      color: appTheme.lightBlue50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 134.h,
        padding: EdgeInsets.symmetric(vertical: 4.h),
        decoration: AppDecoration.fillLightBlue.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "2022",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage11,
              height: 68.h,
              width: 60.h,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "RPL 1",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
