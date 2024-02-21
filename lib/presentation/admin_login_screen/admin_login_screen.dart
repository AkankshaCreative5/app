import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_elevated_button.dart';
import 'package:akanksha_s_application2/widgets/custom_outlined_button.dart';
import 'package:akanksha_s_application2/widgets/custom_text_form_field.dart';

class AdminLoginScreen extends StatelessWidget {
  AdminLoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

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
                  horizontal: 16.h,
                  vertical: 22.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 48.v),
                    SizedBox(
                      height: 176.v,
                      width: 189.h,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "YumYumNow",
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
                    SizedBox(height: 10.v),
                    SizedBox(
                      width: 174.h,
                      child: Text(
                        "Login To Your \nAdmin Dashboard",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeLatoAmber500,
                      ),
                    ),
                    SizedBox(height: 31.v),
                    _buildEmail(context),
                    SizedBox(height: 12.v),
                    _buildPassword(context),
                    SizedBox(height: 31.v),
                    SizedBox(
                      width: 140.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Or\n",
                              style:
                                  CustomTextStyles.bodySmallYuGothicUIfffbbc05,
                            ),
                            TextSpan(
                              text: "Continue With",
                              style: CustomTextStyles.titleLargefffbbc05,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 22.v),
                    _buildFacebook1(context),
                    SizedBox(height: 9.v),
                    _buildLogin(context),
                    SizedBox(height: 9.v),
                    Text(
                      "Don’t Have Account?",
                      style: theme.textTheme.labelMedium,
                    ),
                    SizedBox(height: 25.v),
                    SizedBox(
                      width: 83.h,
                      child: Text(
                        "Design By \nGood Food",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLargeYuGothicUI,
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
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email",
      hintStyle: CustomTextStyles.bodyMediumOnErrorContainer,
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(22.h, 18.v, 20.h, 18.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 16.v,
          width: 20.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 57.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(24.h, 18.v, 22.h, 18.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLocation,
          height: 18.v,
          width: 16.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 57.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildFacebook(BuildContext context) {
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
            imagePath: ImageConstant.imgGoogleicon1,
            height: 25.v,
            width: 24.h,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebook1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFacebook(context),
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
      buttonTextStyle: CustomTextStyles.titleLargeYeonSungOnError,
    );
  }
}
