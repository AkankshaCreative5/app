import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:akanksha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:akanksha_s_application2/widgets/custom_floating_text_field.dart';
import 'package:akanksha_s_application2/widgets/custom_outlined_button.dart';

class AdminProfileScreen extends StatelessWidget {
  AdminProfileScreen({Key? key})
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
        appBar: _buildAppBar(context),
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
                  horizontal: 12.h,
                  vertical: 28.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 11.v),
                    _buildTitleRow(context),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        right: 10.h,
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
                        left: 1.h,
                        right: 10.h,
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
                        left: 1.h,
                        right: 10.h,
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
                        left: 1.h,
                        right: 10.h,
                      ),
                      child: CustomFloatingTextField(
                        controller: emailController,
                        labelText: "Phone",
                        labelStyle: theme.textTheme.bodySmall!,
                        hintText: "Phone",
                        textInputType: TextInputType.phone,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        right: 10.h,
                      ),
                      child: CustomFloatingTextField(
                        controller: passwordController,
                        labelText: "Password",
                        labelStyle: CustomTextStyles.titleLarge22,
                        hintText: "Password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                        contentPadding:
                            EdgeInsets.fromLTRB(30.h, 2.v, 30.h, 23.v),
                      ),
                    ),
                    Spacer(),
                    CustomOutlinedButton(
                      text: "Save Information",
                      margin: EdgeInsets.only(
                        left: 9.h,
                        right: 2.h,
                      ),
                      buttonStyle:
                          CustomButtonStyles.outlineSecondaryContainerTL151,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumYuGothicUIBlack900_1,
                    ),
                    SizedBox(height: 17.v),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 43.h,
      leading: AppbarLeadingIconbutton(
        margin: EdgeInsets.only(
          left: 23.h,
          top: 2.v,
          bottom: 33.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Admin Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildTitleRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Edit Your Profile ",
            style: CustomTextStyles.bodyMediumYeonSungErrorContainer,
          ),
          Text(
            "Click Here To Edit",
            style: CustomTextStyles.bodyMediumYuGothicUIAmber500_1,
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
