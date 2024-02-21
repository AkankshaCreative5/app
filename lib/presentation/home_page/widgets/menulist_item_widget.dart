import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class MenulistItemWidget extends StatelessWidget {
  const MenulistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineIndigoA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMenuPhoto,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(
              left: 4.h,
              top: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 25.v,
              bottom: 21.v,
            ),
            child: Text(
              "Herbal Pancake",
              style: CustomTextStyles.titleSmallBlack900,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 21.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text(
                    "7",
                    style: CustomTextStyles.titleLargeLatoAmber50022,
                  ),
                ),
                SizedBox(height: 4.v),
                Container(
                  width: 53.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.outlinePrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: Text(
                    "Add To Cart",
                    style: CustomTextStyles.latoOnError,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
