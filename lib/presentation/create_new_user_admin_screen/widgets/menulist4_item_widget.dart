import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Menulist4ItemWidget extends StatelessWidget {
  const Menulist4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer4.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMenuPhoto2,
            height: 62.adaptSize,
            width: 62.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name Customer",
                  style:
                      CustomTextStyles.bodyMediumYuGothicUIOnPrimaryContainer,
                ),
                SizedBox(height: 11.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "Quantity",
                        style: CustomTextStyles
                            .bodySmallYuGothicUIOnPrimaryContainer,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "2",
                        style: CustomTextStyles.bodyLargeBlack900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 26.v,
            width: 81.h,
            text: "Accept",
            margin: EdgeInsets.only(
              top: 20.v,
              right: 14.h,
              bottom: 17.v,
            ),
            buttonStyle: CustomButtonStyles.fillAmberTL8,
            buttonTextStyle: CustomTextStyles.bodyMediumYuGothicUIOnError,
          ),
        ],
      ),
    );
  }
}
