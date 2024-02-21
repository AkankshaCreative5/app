import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:akanksha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'widgets/addmenugrid_item_widget.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              _buildInboxRow(context),
              SizedBox(height: 59.v),
              _buildAddMenuGrid(context),
              Spacer(),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 98.h,
                  margin: EdgeInsets.only(right: 113.h),
                  child: Text(
                    "Design By \nGood Design",
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
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSalmNAlHorno,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 3.v,
          bottom: 3.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "YumYumNow",
      ),
    );
  }

  /// Section Widget
  Widget _buildInboxRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 6.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgInbox,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 47.h),
                ),
                SizedBox(height: 12.v),
                Text(
                  "Pending Order",
                  style: CustomTextStyles.titleLargeAmber500,
                ),
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.only(left: 46.h),
                  child: Text(
                    "30",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              top: 2.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCheckCircleBroken,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: 51.h,
                  child: Text(
                    "Completed \norder",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmallYeonSungAmber500,
                  ),
                ),
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 12.h),
                    child: Text(
                      "10",
                      style: CustomTextStyles.titleLargeDeeporange900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              right: 19.h,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconBlack900,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                SizedBox(height: 9.v),
                SizedBox(
                  width: 63.h,
                  child: Text(
                    "Whole Time \nEarning",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmallYuGothicUIAmber500,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 6.h),
                    child: Text(
                      "100",
                      style: CustomTextStyles.titleLargeAmber500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddMenuGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 9.h,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 86.v,
          crossAxisCount: 2,
          mainAxisSpacing: 20.h,
          crossAxisSpacing: 20.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return AddmenugridItemWidget();
        },
      ),
    );
  }
}
