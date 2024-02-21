import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Menulist2ItemWidget extends StatelessWidget {
  const Menulist2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 7.v,
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
            height: 62.v,
            width: 64.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(
              left: 4.h,
              top: 3.v,
              bottom: 4.v,
            ),
          ),
          Container(
            width: 56.h,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 28.v,
            ),
            child: Text(
              "Herbal Pancake",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall!.copyWith(
                height: 1.31,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 22.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "7",
                    style: CustomTextStyles.titleLargeLatoAmber50022,
                  ),
                ),
                SizedBox(height: 6.v),
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
