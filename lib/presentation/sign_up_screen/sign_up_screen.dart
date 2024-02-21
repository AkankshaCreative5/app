import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_elevated_button.dart';
import 'package:akanksha_s_application2/widgets/custom_outlined_button.dart';
import 'package:akanksha_s_application2/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 6.h,
                  vertical: 38.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSalmNAlHorno,
                      height: 130.adaptSize,
                      width: 130.adaptSize,
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 3.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Yum YumNow",
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Padding(
                      padding: EdgeInsets.only(right: 82.h),
                      child: Text(
                        "Deliever Favorite Food",
                        style: CustomTextStyles.titleSmallLatoBlack900,
                      ),
                    ),
                    SizedBox(height: 29.v),
                    Padding(
                      padding: EdgeInsets.only(right: 99.h),
                      child: Text(
                        "Sign Up Here",
                        style: CustomTextStyles.titleLargeYellow800,
                      ),
                    ),
                    SizedBox(height: 30.v),
                    _buildName(context),
                    SizedBox(height: 12.v),
                    _buildPhoneNumber(context),
                    SizedBox(height: 12.v),
                    _buildPassword(context),
                    SizedBox(height: 3.v),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 114.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Or\n",
                                style:
                                    CustomTextStyles.bodySmallYeonSungff09051c,
                              ),
                              TextSpan(
                                text: "Sign Up",
                                style:
                                    CustomTextStyles.titleLargeYeonSungff09051c,
                              ),
                              TextSpan(
                                text: " With",
                                style:
                                    CustomTextStyles.titleLargeYeonSungff09051c,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    _buildFacebook(context),
                    SizedBox(height: 18.v),
                    _buildCreateAccount(context),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(right: 86.h),
                      child: Text(
                        "Already Have An Account?",
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(height: 4.v),
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
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 21.h),
      child: CustomTextFormField(
        controller: nameController,
        hintText: "Name",
        prefix: Container(
          margin: EdgeInsets.fromLTRB(18.h, 17.v, 20.h, 16.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgUser02,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 57.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 2.h,
      ),
      child: CustomTextFormField(
        controller: phoneNumberController,
        hintText: "Email or Phone Number",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(20.h, 17.v, 16.h, 16.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgMail02,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 57.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 2.h,
      ),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(20.h, 16.v, 16.h, 17.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgLock01,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 57.v,
        ),
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebookButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 152.h,
      text: "Facebook",
    );
  }

  /// Section Widget
  Widget _buildGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 152.h,
      text: "Google",
      margin: EdgeInsets.only(left: 21.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 12.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogleicon2,
          height: 25.v,
          width: 24.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebook(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 1.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildFacebookButton(context),
          _buildGoogleButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
      width: 157.h,
      text: "Create Account",
      margin: EdgeInsets.only(right: 85.h),
      buttonTextStyle: CustomTextStyles.titleLargeYeonSungOnPrimaryContainer,
    );
  }
}
