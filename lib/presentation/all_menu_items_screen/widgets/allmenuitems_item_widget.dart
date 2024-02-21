import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AllmenuitemsItemWidget extends StatelessWidget {
  const AllmenuitemsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMenuPhoto62x62,
            height: 62.adaptSize,
            width: 62.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 6.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Spacy fresh crab",
                  style:
                      CustomTextStyles.bodyMediumYuGothicUIOnPrimaryContainer,
                ),
                SizedBox(height: 2.v),
                Opacity(
                  opacity: 0.3,
                  child: Text(
                    "Waroenk kita",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  " 35",
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 26.adaptSize,
                      width: 26.adaptSize,
                      child: CustomImageView(),
                    ),
                    Opacity(
                      opacity: 0.7,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 2.v,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "10",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: CustomIconButton(
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        padding: EdgeInsets.all(7.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGrid,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.v),
                CustomImageView(
                  imagePath: ImageConstant.imgTrash03,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
