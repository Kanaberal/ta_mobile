import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class RekayasaListSectionItemWidget extends StatelessWidget {
  const RekayasaListSectionItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillLightBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.h),
          CustomImageView(
            imagePath: ImageConstant.imgImage11,
            height: 116.h,
            width: 98.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Text(
                "Rekayasa Perangkat Lunak",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
