import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class DatalistItemWidget extends StatelessWidget {
  const DatalistItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 18.h,
        top: 26.h,
        bottom: 26.h,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL6,
      ),
      child: Row(
        children: [
          Text(
            "#Q",
            style: CustomTextStyles.titleMediumPTSansBluegray700,
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.h),
            child: Text(
              "Nama",
              style: CustomTextStyles.titleMediumPTSansBluegray700,
            ),
          ),
          Spacer(flex: 54),
          Text(
            "Aksi",
            style: CustomTextStyles.titleMediumPTSansBluegray700,
          ),
          Spacer(flex: 45),
        ],
      ),
    );
  }
}
