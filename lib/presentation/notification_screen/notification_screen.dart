import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:akanksha_s_application2/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHistoryItem(context),
                      SizedBox(height: 46.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h, right: 51.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSettings,
                                height: 16.v,
                                width: 20.h,
                                margin: EdgeInsets.symmetric(vertical: 1.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text(
                                    "Order has been taken by the driver",
                                    style: CustomTextStyles.bodyMediumBlack900))
                          ])),
                      SizedBox(height: 46.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgCheckmark,
                                height: 29.v,
                                width: 30.h),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 12.h, top: 7.v, bottom: 4.v),
                                child: Text("Congrats Your Order Placed",
                                    style:
                                        CustomTextStyles.bodyMediumBlack900_2))
                          ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 41.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgIconYellow800,
            margin: EdgeInsets.only(left: 17.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapIcon(context);
            }),
        title: AppbarSubtitleThree(
            text: "Hello,  lorem ipsum", margin: EdgeInsets.only(left: 50.h)));
  }

  /// Section Widget
  Widget _buildHistoryItem(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgSademoji,
              height: 26.adaptSize,
              width: 26.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 11.h, top: 5.v),
              child: Text("Your order has been Canceled Successfully",
                  style: CustomTextStyles.bodyMediumBlack900))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapIcon(BuildContext context) {
    Navigator.pop(context);
  }
}
