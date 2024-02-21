import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Menulist3ItemWidget extends StatelessWidget {
  const Menulist3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Customer Name",
                  style:
                      CustomTextStyles.bodyMediumYuGothicUIOnPrimaryContainer,
                ),
                SizedBox(height: 4.v),
                Opacity(
                  opacity: 0.3,
                  child: Text(
                    "Payment",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  "Not Received ",
                  style: CustomTextStyles.bodyLargeRed400,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: Column(
              children: [
                Text(
                  "Delivered",
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                SizedBox(height: 2.v),
                Container(
                  height: 35.adaptSize,
                  width: 35.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.amber500,
                    borderRadius: BorderRadius.circular(
                      17.h,
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
}
