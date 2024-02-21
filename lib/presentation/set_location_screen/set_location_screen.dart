import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_text_form_field.dart';

class SetLocationScreen extends StatelessWidget {
  SetLocationScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 28.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 75.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "Choose Your Location ",
                    style: CustomTextStyles.headlineSmall25,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: CustomTextFormField(
                  controller: locationController,
                  hintText: "Jaipur",
                  hintStyle: CustomTextStyles.bodyMediumBlack900_2,
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 16.v, 13.h, 17.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 57.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 15.h,
                    top: 20.v,
                    bottom: 20.v,
                  ),
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineSecondaryContainerTL15,
                  filled: false,
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 330.h,
                  margin: EdgeInsets.only(
                    left: 13.h,
                    right: 6.h,
                  ),
                  child: Text(
                    "To provide you with the best dining experience, we need your permission to access your device's location. By enabling location services, we can offer personalized restaurant recommendations, accurate delivery estimates, and ensure a seamless food delivery experience.\"",
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeBlack90016.copyWith(
                      height: 1.31,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 47.v),
              Container(
                width: 83.h,
                margin: EdgeInsets.only(right: 121.h),
                child: Text(
                  "Design By \nGood Food",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeYuGothicUIBlack900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
