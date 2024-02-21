import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 25.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 94.v),
              _buildOnboardingStack(context),
              Spacer(),
              CustomElevatedButton(
                width: 157.h,
                text: "Next",
                buttonTextStyle:
                    CustomTextStyles.titleLargeYeonSungOnPrimaryContainer,
              ),
              SizedBox(height: 20.v),
              SizedBox(
                width: 78.h,
                child: Text(
                  "Design by \ngood food",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                      CustomTextStyles.bodyLargeYuGothicUIOnSecondaryContainer,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOnboardingStack(BuildContext context) {
    return SizedBox(
      height: 369.v,
      width: 312.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBbca3e93Aedd4,
            height: 280.v,
            width: 312.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 225.v,
              width: 253.h,
              margin: EdgeInsets.only(left: 23.h),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 253.h,
                      child: Text(
                        "Enjoy Restaurant Quality Meals \nat Home",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeYeonSungYellow800,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCuteCakeNasta,
                    height: 200.adaptSize,
                    width: 200.adaptSize,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
