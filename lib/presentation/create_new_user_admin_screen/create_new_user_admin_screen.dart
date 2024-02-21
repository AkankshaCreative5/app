import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:akanksha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'widgets/menulist4_item_widget.dart';

class CreateNewUserAdminScreen extends StatelessWidget {
  const CreateNewUserAdminScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 5.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 54.h),
                  child: Text(
                    "Pending Orders",
                    style: CustomTextStyles.headlineLarge_1,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              _buildMenuList(context),
              Spacer(),
              SizedBox(height: 23.v),
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

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 38.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        margin: EdgeInsets.only(
          left: 6.h,
          right: 334.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
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
        itemCount: 3,
        itemBuilder: (context, index) {
          return Menulist4ItemWidget();
        },
      ),
    );
  }
}
