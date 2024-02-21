import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:akanksha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'widgets/allmenuitems_item_widget.dart';

class AllMenuItemsScreen extends StatelessWidget {
  const AllMenuItemsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 6.h,
            top: 5.v,
            right: 6.h,
          ),
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
            itemCount: 5,
            itemBuilder: (context, index) {
              return AllmenuitemsItemWidget();
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
          top: 6.v,
          bottom: 29.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "All Item",
        margin: EdgeInsets.only(left: 95.h),
      ),
    );
  }
}
