import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class NineteensliderItemWidget extends StatelessWidget {
  const NineteensliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomImageView(
        imagePath: ImageConstant.imgBanner1,
        height: 172.v,
        width: 300.h,
        radius: BorderRadius.circular(
          15.h,
        ),
      ),
    );
  }
}
