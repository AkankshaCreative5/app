import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:akanksha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:akanksha_s_application2/widgets/custom_outlined_button.dart';

class PayOutOneScreen extends StatelessWidget {
  const PayOutOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 9.h),
          child: Column(
            children: [
              Text(
                "Edit ",
                style: CustomTextStyles.headlineSmallAmber500,
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  right: 5.h,
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
                  left: 12.h,
                  right: 5.h,
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
                  left: 12.h,
                  right: 5.h,
                ),
                child: _buildAddressRow(
                  context,
                  addressText: "Phone",
                  descriptionText: "123456789",
                ),
              ),
              SizedBox(height: 12.v),
              _buildPaymentMethodRow1(context),
              SizedBox(height: 12.v),
              _buildPaymentMethodRow2(context),
              SizedBox(height: 55.v),
              CustomOutlinedButton(
                text: "Place My Order",
                margin: EdgeInsets.only(
                  left: 12.h,
                  right: 5.h,
                ),
                buttonStyle: CustomButtonStyles.outlineSecondaryContainerTL15,
                buttonTextStyle: CustomTextStyles.bodyMediumYuGothicUIAmber500,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        margin: EdgeInsets.fromLTRB(16.h, 18.v, 324.h, 18.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethodRow1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 7.h),
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Opacity(
            opacity: 0.3,
            child: Padding(
              padding: EdgeInsets.only(
                top: 18.v,
                bottom: 15.v,
              ),
              child: Text(
                "Payment Method",
                style: CustomTextStyles.bodyMediumYeonSung,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCashondelivery1,
            height: 52.v,
            width: 106.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethodRow2(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 6.h,
        right: 1.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Opacity(
            opacity: 0.3,
            child: Padding(
              padding: EdgeInsets.only(top: 8.v),
              child: Text(
                "Total Amount",
                style: CustomTextStyles.bodyMediumYeonSung,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              right: 52.h,
            ),
            child: Text(
              " 35",
              style: theme.textTheme.bodyLarge,
            ),
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
