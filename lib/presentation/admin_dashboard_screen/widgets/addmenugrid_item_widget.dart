import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class AddmenugridItemWidget extends StatelessWidget {
  const AddmenugridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 47.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineAmber.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: ImageConstant.imgPlusCircle,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 11.h),
          ),
          SizedBox(height: 28.v),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Add Menu",
              style: CustomTextStyles.bodySmallYuGothicUIAmber50010,
            ),
          ),
        ],
      ),
    );
  }
}
