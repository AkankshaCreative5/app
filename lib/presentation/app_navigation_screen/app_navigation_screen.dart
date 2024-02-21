import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Set Location",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.setLocationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Popular",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.popularScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Food Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.foodDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pay Out One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.payOutOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pay Out",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.payOutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Order History",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.orderHistoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Admin Splash Screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.adminSplashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Admin Login",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.adminLoginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Admin Sign Up",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.adminSignUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Admin Dashboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.adminDashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Menu",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addMenuScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "All menu Items",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.allMenuItemsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Out For Delivery ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.outForDeliveryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Admin Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.adminProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create New User Admin  One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewUserAdminOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create New User Admin ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewUserAdminScreen),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
