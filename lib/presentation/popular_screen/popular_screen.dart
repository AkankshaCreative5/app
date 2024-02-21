import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:akanksha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'widgets/menulist2_item_widget.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 10.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child: Column(
                children: [
                  _buildFour(context),
                  SizedBox(height: 49.v),
                  Text(
                    "Menu",
                    style: CustomTextStyles.headlineSmall_1,
                  ),
                  SizedBox(height: 16.v),
                  _buildMenuList(context),
                  SizedBox(height: 17.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgCheckSquareBroken,
                    height: 16.v,
                    width: 24.h,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 32.h),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 23.h),
                      child: Text(
                        "Add To Cart",
                        style: CustomTextStyles.latoOnError,
                      ),
                    ),
                  ),
                ],
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
      height: 38.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        margin: EdgeInsets.only(
          left: 23.h,
          right: 317.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Explore Your Favorite Food",
            style: theme.textTheme.headlineSmall,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBell01Amber500,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 12.h,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 24.v,
          );
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return Menulist2ItemWidget();
        },
      ),
    );
  }
}
