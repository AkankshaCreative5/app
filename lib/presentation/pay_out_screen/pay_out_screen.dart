import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_elevated_button.dart';

class PayOutScreen extends StatelessWidget {
  const PayOutScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 94.v),
          child: Column(
            children: [
              SizedBox(
                width: 200.h,
                child: Text(
                  "Congrats\nYour Order Placed",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmall25.copyWith(
                    height: 1.31,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              CustomImageView(
                imagePath: ImageConstant.imgIllustration,
                height: 162.v,
                width: 172.h,
              ),
              SizedBox(height: 50.v),
              CustomElevatedButton(
                width: 157.h,
                text: "Go Home",
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
