import 'package:flutter/material.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/onboarding_screen/onboarding_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/set_location_screen/set_location_screen.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/popular_screen/popular_screen.dart';
import '../presentation/food_details_screen/food_details_screen.dart';
import '../presentation/cart_screen/cart_screen.dart';
import '../presentation/pay_out_one_screen/pay_out_one_screen.dart';
import '../presentation/pay_out_screen/pay_out_screen.dart';
import '../presentation/order_history_screen/order_history_screen.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/admin_splash_screen/admin_splash_screen.dart';
import '../presentation/admin_login_screen/admin_login_screen.dart';
import '../presentation/admin_sign_up_screen/admin_sign_up_screen.dart';
import '../presentation/admin_dashboard_screen/admin_dashboard_screen.dart';
import '../presentation/add_menu_screen/add_menu_screen.dart';
import '../presentation/all_menu_items_screen/all_menu_items_screen.dart';
import '../presentation/out_for_delivery_screen/out_for_delivery_screen.dart';
import '../presentation/admin_profile_screen/admin_profile_screen.dart';
import '../presentation/create_new_user_admin_one_screen/create_new_user_admin_one_screen.dart';
import '../presentation/create_new_user_admin_screen/create_new_user_admin_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String setLocationScreen = '/set_location_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchPage = '/search_page';

  static const String popularScreen = '/popular_screen';

  static const String foodDetailsScreen = '/food_details_screen';

  static const String cartScreen = '/cart_screen';

  static const String payOutOneScreen = '/pay_out_one_screen';

  static const String payOutScreen = '/pay_out_screen';

  static const String orderHistoryScreen = '/order_history_screen';

  static const String profilePage = '/profile_page';

  static const String notificationScreen = '/notification_screen';

  static const String adminSplashScreen = '/admin_splash_screen';

  static const String adminLoginScreen = '/admin_login_screen';

  static const String adminSignUpScreen = '/admin_sign_up_screen';

  static const String adminDashboardScreen = '/admin_dashboard_screen';

  static const String addMenuScreen = '/add_menu_screen';

  static const String allMenuItemsScreen = '/all_menu_items_screen';

  static const String outForDeliveryScreen = '/out_for_delivery_screen';

  static const String adminProfileScreen = '/admin_profile_screen';

  static const String createNewUserAdminOneScreen =
      '/create_new_user_admin_one_screen';

  static const String createNewUserAdminScreen =
      '/create_new_user_admin_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    setLocationScreen: (context) => SetLocationScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    popularScreen: (context) => PopularScreen(),
    foodDetailsScreen: (context) => FoodDetailsScreen(),
    cartScreen: (context) => CartScreen(),
    payOutOneScreen: (context) => PayOutOneScreen(),
    payOutScreen: (context) => PayOutScreen(),
    orderHistoryScreen: (context) => OrderHistoryScreen(),
    notificationScreen: (context) => NotificationScreen(),
    adminSplashScreen: (context) => AdminSplashScreen(),
    adminLoginScreen: (context) => AdminLoginScreen(),
    adminSignUpScreen: (context) => AdminSignUpScreen(),
    adminDashboardScreen: (context) => AdminDashboardScreen(),
    addMenuScreen: (context) => AddMenuScreen(),
    allMenuItemsScreen: (context) => AllMenuItemsScreen(),
    outForDeliveryScreen: (context) => OutForDeliveryScreen(),
    adminProfileScreen: (context) => AdminProfileScreen(),
    createNewUserAdminOneScreen: (context) => CreateNewUserAdminOneScreen(),
    createNewUserAdminScreen: (context) => CreateNewUserAdminScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
