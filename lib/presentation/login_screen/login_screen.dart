import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_elevated_button.dart';
import 'package:akanksha_s_application2/widgets/custom_outlined_button.dart';
import 'package:akanksha_s_application2/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 28.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 18.v),
                    SizedBox(
                      height: 183.v,
                      width: 198.h,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Yum YumNow",
                              style: theme.textTheme.displayMedium,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSalmNAlHorno,
                            height: 130.adaptSize,
                            width: 130.adaptSize,
                            alignment: Alignment.topCenter,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "Deliver Favorite Food",
                      style: CustomTextStyles.titleSmallLatoBlack900,
                    ),
                    SizedBox(height: 28.v),
                    Text(
                      "Login To Your  Account",
                      style: CustomTextStyles.titleLargeLatoYellow800Bold,
                    ),
                    SizedBox(height: 31.v),
                    _buildPhoneNumber(context),
                    SizedBox(height: 12.v),
                    _buildPassword(context),
                    SizedBox(height: 30.v),
                    SizedBox(
                      width: 124.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Or\n",
                              style: CustomTextStyles.bodySmallYeonSungff09051c,
                            ),
                            TextSpan(
                              text: "Continue With",
                              style:
                                  CustomTextStyles.titleLargeYeonSungff09051c,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    _buildFacebook(context),
                    SizedBox(height: 9.v),
                    _buildLogin(context),
                    SizedBox(height: 15.v),
                    Text(
                      "Don’t Have Account?",
                      style: CustomTextStyles.labelMediumOnPrimaryContainer,
                    ),
                    SizedBox(height: 32.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 83.h,
                        margin: EdgeInsets.only(right: 115.h),
                        child: Text(
                          "Design By \nGood Food",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargeYuGothicUIGray900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 5.h,
      ),
      child: CustomTextFormField(
        controller: phoneNumberController,
        hintText: "Email or Phone Number",
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 28.h,
          vertical: 20.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 5.h,
      ),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 28.h,
          vertical: 20.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSocialMediaButtons(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Facebook",
        margin: EdgeInsets.only(right: 10.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Google",
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgGoogleicon2,
            height: 25.v,
            width: 24.h,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebook(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildSocialMediaButtons(context),
          _buildGoogle(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
      width: 157.h,
      text: "Login",
      buttonTextStyle: CustomTextStyles.titleLargeGray900,
    );
  }
}
