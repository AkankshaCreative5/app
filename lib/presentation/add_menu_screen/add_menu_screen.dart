import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:akanksha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:akanksha_s_application2/widgets/custom_elevated_button.dart';
import 'package:akanksha_s_application2/widgets/custom_icon_button.dart';
import 'package:akanksha_s_application2/widgets/custom_text_form_field.dart';

class AddMenuScreen extends StatelessWidget {
  AddMenuScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController priceEditTextController = TextEditingController();

  TextEditingController shortDescriptionEditTextController =
      TextEditingController();

  TextEditingController ingredientsValueEditTextController =
      TextEditingController();

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
                  horizontal: 5.h,
                  vertical: 6.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 13.v),
                    _buildNameEditText(context),
                    SizedBox(height: 2.v),
                    _buildPriceEditText(context),
                    SizedBox(height: 6.v),
                    _buildItemImageRow(context),
                    SizedBox(height: 6.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgMenuPhoto,
                      height: 117.v,
                      width: 175.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 78.h),
                    ),
                    SizedBox(height: 10.v),
                    _buildShortDescriptionEditText(context),
                    SizedBox(height: 11.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 292.h,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          right: 51.h,
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, \nsed do eiusmod tempor incididunt \nut labore et dolore magna aliqua. Ut enim ad ",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumBlack900_1,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    _buildIngredientsValueEditText(context),
                    SizedBox(height: 4.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 99.h,
                        margin: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "Noddle\nSalad\nBurger\nHerbal Pan Cake\nMomos",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallBlack900_1.copyWith(
                            height: 1.81,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildAddItemButton(context),
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
          top: 5.v,
          bottom: 30.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Add Item",
      ),
    );
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return CustomTextFormField(
      controller: nameEditTextController,
      hintText: "Item Name",
      contentPadding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 19.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineSecondaryContainerTL15,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildPriceEditText(BuildContext context) {
    return CustomTextFormField(
      controller: priceEditTextController,
      hintText: "Item Price",
      contentPadding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 19.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineSecondaryContainerTL15,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildItemImageRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.v),
            child: Text(
              "Item Image",
              style: CustomTextStyles.bodyMediumYuGothicUIBlack900,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              right: 13.h,
              bottom: 2.v,
            ),
            child: CustomIconButton(
              height: 20.adaptSize,
              width: 20.adaptSize,
              child: CustomImageView(),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildShortDescriptionEditText(BuildContext context) {
    return CustomTextFormField(
      controller: shortDescriptionEditTextController,
      hintText: "Short Description",
      contentPadding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 19.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineSecondaryContainerTL15,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildIngredientsValueEditText(BuildContext context) {
    return CustomTextFormField(
      controller: ingredientsValueEditTextController,
      hintText: "Ingredients",
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 19.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineSecondaryContainerTL15,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildAddItemButton(BuildContext context) {
    return CustomElevatedButton(
      width: 157.h,
      text: "Add Item",
      margin: EdgeInsets.only(
        left: 101.h,
        right: 102.h,
        bottom: 10.v,
      ),
    );
  }
}
