import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/presentation/home_page/home_page.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:akanksha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:akanksha_s_application2/widgets/custom_bottom_bar.dart';
import 'package:akanksha_s_application2/widgets/custom_elevated_button.dart';
import 'widgets/menucard_item_widget.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 15.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 135.h),
                  child: Text(
                    "Cart",
                    style: CustomTextStyles.headlineSmall_1,
                  ),
                ),
              ),
              _buildMenuCard(context),
              Spacer(),
              CustomElevatedButton(
                text: "Proceed",
                margin: EdgeInsets.only(
                  left: 12.h,
                  right: 11.h,
                ),
                buttonStyle: CustomButtonStyles.outlineBlack,
                buttonTextStyle: CustomTextStyles.bodyMediumYuGothicUIAmber500,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitleTwo(
        text: "Explore Your Favorite Food",
        margin: EdgeInsets.only(left: 21.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBell01Amber500,
          margin: EdgeInsets.fromLTRB(12.h, 13.v, 21.h, 18.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMenuCard(BuildContext context) {
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
        itemCount: 4,
        itemBuilder: (context, index) {
          return MenucardItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
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
