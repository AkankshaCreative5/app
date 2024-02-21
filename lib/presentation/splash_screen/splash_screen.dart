import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
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
              SizedBox(height: 28.v),
              Text(
                "YumYum Now",
                style: CustomTextStyles.displayMediumOnPrimaryContainer,
              ),
              SizedBox(height: 22.v),
              Text(
                "Deliever Favorite Food",
                style: CustomTextStyles.titleLargeLatoAmber500,
              ),
              Spacer(
                flex: 62,
              ),
              SizedBox(
                width: 83.h,
                child: Text(
                  "Design By \nGood Food",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeYuGothicUIBlack900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
