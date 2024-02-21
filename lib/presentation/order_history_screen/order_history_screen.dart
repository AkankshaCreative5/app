import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/presentation/home_page/home_page.dart';
import 'package:akanksha_s_application2/widgets/custom_bottom_bar.dart';
import 'widgets/menucomponentlist_item_widget.dart';

class OrderHistoryScreen extends StatelessWidget {
  OrderHistoryScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 13.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 35.v),
              _buildExploreYourFavoriteRow(context),
              SizedBox(height: 34.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child: Text(
                    "Recent buy",
                    style: CustomTextStyles.bodyMediumYuGothicUIBlack90015,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              _buildMenu2Row(context),
              SizedBox(height: 38.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "Previously buy",
                    style: CustomTextStyles.bodyMediumYuGothicUIBlack90015,
                  ),
                ),
              ),
              SizedBox(height: 55.v),
              _buildMenuComponentList(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBarColumn(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildExploreYourFavoriteRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
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
  Widget _buildMenu2Row(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineIndigoA20011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMenuPhoto1,
            height: 62.adaptSize,
            width: 62.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 6.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Spacy fresh crab",
                  style:
                      CustomTextStyles.bodyMediumYuGothicUIOnPrimaryContainer,
                ),
                SizedBox(height: 2.v),
                Opacity(
                  opacity: 0.3,
                  child: Text(
                    "Waroenk kita",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  " 35",
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 35.adaptSize,
            width: 35.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              right: 25.h,
              bottom: 32.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.amber500,
              borderRadius: BorderRadius.circular(
                17.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuComponentList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 20.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return MenucomponentlistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarColumn(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
