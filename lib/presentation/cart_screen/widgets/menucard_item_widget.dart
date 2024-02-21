import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MenucardItemWidget extends StatelessWidget {
  const MenucardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineIndigoA20011.copyWith(
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
              top: 19.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Spacy fresh crab",
                  style: CustomTextStyles.bodyMediumYeonSungOnPrimaryContainer,
                ),
                SizedBox(height: 13.v),
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
                SizedBox(
                  width: 92.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            top: 2.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "1",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        padding: EdgeInsets.all(7.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGrid,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTrash03,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 18.v,
                        width: 26.h,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 4.v,
                          bottom: 2.v,
                        ),
                      ),
                    ],
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
