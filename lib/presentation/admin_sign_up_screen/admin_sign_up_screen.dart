import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_elevated_button.dart';
import 'package:akanksha_s_application2/widgets/custom_text_form_field.dart';

class AdminSignUpScreen extends StatelessWidget {
  AdminSignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController locationController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController nameController1 = TextEditingController();

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
                  horizontal: 16.h,
                  vertical: 21.v,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 142.v,
                      width: 170.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSalmNAlHorno,
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            alignment: Alignment.topCenter,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "YumYumNow",
                              style: theme.textTheme.displaySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3.v),
                    SizedBox(
                      width: 176.h,
                      child: Text(
                        "Sign Up Here For Your \nAdmin Dashboard",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLarge16,
                      ),
                    ),
                    SizedBox(height: 43.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "Choose Your Location ",
                          style: CustomTextStyles.bodyMediumYeonSungAmber500,
                        ),
                      ),
                    ),
                    _buildLocation(context),
                    SizedBox(height: 16.v),
                    _buildName(context),
                    SizedBox(height: 12.v),
                    _buildName1(context),
                    SizedBox(height: 12.v),
                    _buildPhoneNumber(context),
                    SizedBox(height: 12.v),
                    _buildPassword(context),
                    SizedBox(height: 16.v),
                    _buildCreateAccount(context),
                    SizedBox(height: 17.v),
                    Text(
                      "Already Have An Account?",
                      style: CustomTextStyles.labelMediumAmber500,
                    ),
                    SizedBox(height: 27.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 83.h,
                        margin: EdgeInsets.only(right: 108.h),
                        child: Text(
                          "Design By \nGood Food",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargeYuGothicUI,
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
  Widget _buildLocation(BuildContext context) {
    return CustomTextFormField(
      controller: locationController,
      hintText: "Jaipur",
      hintStyle: CustomTextStyles.bodyMediumBlack900_2,
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
      borderDecoration: TextFormFieldStyleHelper.outlineSecondaryContainerTL15,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
      hintText: "Name of Owner ",
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
    );
  }

  /// Section Widget
  Widget _buildName1(BuildContext context) {
    return CustomTextFormField(
      controller: nameController1,
      hintText: "Name of Restaurant ",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(20.h, 21.v, 18.h, 12.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgHome02,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 57.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
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
    );
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
      width: 157.h,
      text: "Create Account",
      buttonTextStyle: CustomTextStyles.titleLargeOnError,
    );
  }
}
