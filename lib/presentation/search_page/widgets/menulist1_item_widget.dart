import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Menulist1ItemWidget extends StatelessWidget {
  const Menulist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineIndigoA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder22,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMenuPhoto,
              height: 62.v,
              width: 64.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 4.v,
              ),
            ),
            Container(
              width: 56.h,
              margin: EdgeInsets.only(
                left: 29.h,
                top: 30.v,
              ),
              child: Text(
                "Herbal Pancake",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleSmallBlack900.copyWith(
                  height: 1.31,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 22.v,
                right: 9.h,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Text(
                        "7",
                        style: CustomTextStyles.titleLargeLatoErrorContainer,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  SizedBox(
                    height: 14.v,
                    width: 53.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 9.h,
                              bottom: 1.v,
                            ),
                            child: Text(
                              "Add",
                              style: CustomTextStyles.latoOnError,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 53.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 2.v,
                            ),
                            decoration:
                                AppDecoration.outlinePrimaryContainer.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder2,
                            ),
                            child: Text(
                              "Add To Cart",
                              style: CustomTextStyles.latoOnError,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
