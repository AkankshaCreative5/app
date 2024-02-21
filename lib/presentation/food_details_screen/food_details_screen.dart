import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_elevated_button.dart';
import 'package:akanksha_s_application2/widgets/custom_icon_button.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({Key? key})
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
            horizontal: 17.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  right: 94.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 29.v),
                      child: CustomIconButton(
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        child: CustomImageView(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 19.v),
                      child: Text(
                        "Food Name",
                        style: CustomTextStyles.headlineSmallYeonSung,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              CustomImageView(
                imagePath: ImageConstant.imgMenuPhoto,
                height: 200.v,
                width: 300.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 292.h,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    right: 19.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Short description \n",
                          style: CustomTextStyles.titleLargeYeonSungff000000,
                        ),
                        TextSpan(
                          text:
                              "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, \nsed do eiusmod tempor incididunt \nut labore et dolore magna aliqua. Ut enim ad ",
                          style: CustomTextStyles.bodyMediumff000000,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  "Ingredients",
                  style: CustomTextStyles.titleLargeYeonSung,
                ),
              ),
              SizedBox(height: 13.v),
              Container(
                width: 71.h,
                margin: EdgeInsets.only(left: 19.h),
                child: Text(
                  "Strowberry\nCream\nwheat",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallBlack900_1.copyWith(
                    height: 1.81,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              CustomElevatedButton(
                text: "Add To Chart",
                buttonStyle: CustomButtonStyles.outlinePrimaryContainer,
                buttonTextStyle:
                    CustomTextStyles.bodyMediumBentonSansBoldPrimary,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
