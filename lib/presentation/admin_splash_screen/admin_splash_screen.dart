import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';

class AdminSplashScreen extends StatelessWidget {
  const AdminSplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 28.v),
          child: Column(
            children: [
              Spacer(
                flex: 37,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSalmNAlHorno,
                height: 200.adaptSize,
                width: 200.adaptSize,
              ),
              SizedBox(height: 36.v),
              Text(
                "YumYumNow",
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 15.v),
              Text(
                "Admin Dashboard",
                style: CustomTextStyles.titleSmallLatoAmber500,
              ),
              Spacer(
                flex: 62,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 83.h,
                  margin: EdgeInsets.only(right: 53.h),
                  child: Text(
                    "Design By \nGood Food",
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
}
