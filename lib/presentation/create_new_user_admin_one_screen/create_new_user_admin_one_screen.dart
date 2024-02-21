import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_elevated_button.dart';
import 'package:akanksha_s_application2/widgets/custom_icon_button.dart';
import 'package:akanksha_s_application2/widgets/custom_text_form_field.dart';

class CreateNewUserAdminOneScreen extends StatelessWidget {
  CreateNewUserAdminOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameFieldController = TextEditingController();

  TextEditingController phoneNumberFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

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
                  horizontal: 15.h,
                  vertical: 18.v,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          right: 86.h,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 122.v),
                              child: CustomIconButton(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                child: CustomImageView(),
                              ),
                            ),
                            Container(
                              height: 136.v,
                              width: 158.h,
                              margin: EdgeInsets.only(
                                left: 58.h,
                                top: 6.v,
                              ),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Yum YumNow",
                                      style: CustomTextStyles
                                          .headlineLargeYesteryear,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgSalmNAlHorno,
                                    height: 100.adaptSize,
                                    width: 100.adaptSize,
                                    alignment: Alignment.topCenter,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "Create New User Admin ",
                      style: CustomTextStyles.bodyLarge16,
                    ),
                    SizedBox(height: 36.v),
                    _buildNameField(context),
                    SizedBox(height: 17.v),
                    _buildPhoneNumberField(context),
                    SizedBox(height: 17.v),
                    _buildPasswordField(context),
                    SizedBox(height: 41.v),
                    _buildCreateNewUserButton(context),
                    Spacer(),
                    SizedBox(height: 10.v),
                    SizedBox(
                      width: 83.h,
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
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameField(BuildContext context) {
    return CustomTextFormField(
      controller: nameFieldController,
      hintText: "Name ",
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
  Widget _buildPhoneNumberField(BuildContext context) {
    return CustomTextFormField(
      controller: phoneNumberFieldController,
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
  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
      controller: passwordFieldController,
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
  Widget _buildCreateNewUserButton(BuildContext context) {
    return CustomElevatedButton(
      width: 157.h,
      text: "Create New User",
    );
  }
}
