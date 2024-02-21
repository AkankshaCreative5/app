import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnError,
          child: Container(
            padding: EdgeInsets.all(14.h),
            child: Column(
              children: [
                SizedBox(height: 34.v),
                _buildExploreYourFavoriteRow(context),
                SizedBox(height: 37.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    right: 2.h,
                  ),
                  child: _buildAddressRow(
                    context,
                    addressText: "Name",
                    descriptionText: "lorem ipsum",
                  ),
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    right: 2.h,
                  ),
                  child: _buildAddressRow(
                    context,
                    addressText: "Address",
                    descriptionText:
                        "Lorem ipsum is placeholder text \ncommonly used in the graphic, \nprint, and publishing industries \nfor previewing layouts and visual ",
                  ),
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    right: 2.h,
                  ),
                  child: _buildAddressRow(
                    context,
                    addressText: "Email",
                    descriptionText: "lorem ipsum@gmail.com",
                  ),
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    right: 2.h,
                  ),
                  child: _buildAddressRow(
                    context,
                    addressText: "Phone",
                    descriptionText: "123456789",
                  ),
                ),
                Spacer(),
                CustomOutlinedButton(
                  text: "Save Information",
                  margin: EdgeInsets.only(left: 5.h),
                  buttonStyle:
                      CustomButtonStyles.outlineSecondaryContainerTL151,
                  buttonTextStyle:
                      CustomTextStyles.bodyMediumYuGothicUIAmber500,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExploreYourFavoriteRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 7.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Explore Your Favorite Food",
            style: theme.textTheme.headlineSmall,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBell01Amber500,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 12.h,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAddressRow(
    BuildContext context, {
    required String addressText,
    required String descriptionText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 35.v,
            ),
            child: Text(
              addressText,
              style: theme.textTheme.titleLarge!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: Container(
              width: 187.h,
              margin: EdgeInsets.only(
                left: 11.h,
                top: 6.v,
              ),
              child: Text(
                descriptionText,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.gray80075,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
