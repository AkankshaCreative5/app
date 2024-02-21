import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class MenucomponentlistItemWidget extends StatelessWidget {
  const MenucomponentlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineIndigoA20011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMenuPhoto1,
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
              left: 17.h,
              top: 7.v,
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
          CustomElevatedButton(
            height: 29.v,
            width: 85.h,
            text: "Buy Again",
            margin: EdgeInsets.only(
              top: 23.v,
              right: 3.h,
              bottom: 23.v,
            ),
            buttonStyle: CustomButtonStyles.fillAmberTL5,
            buttonTextStyle: CustomTextStyles.bodySmallYeonSungOnError,
          ),
        ],
      ),
    );
  }
}
