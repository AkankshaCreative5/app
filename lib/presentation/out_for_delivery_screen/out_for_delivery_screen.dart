import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:akanksha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'widgets/menulist3_item_widget.dart';

class OutForDeliveryScreen extends StatelessWidget {
  const OutForDeliveryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.h),
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 15.v,
              );
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Menulist3ItemWidget();
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 43.h,
      leading: AppbarLeadingIconbutton(
        margin: EdgeInsets.only(
          left: 23.h,
          top: 4.v,
          bottom: 31.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Out For Delivery",
        margin: EdgeInsets.only(left: 33.h),
      ),
    );
  }
}
