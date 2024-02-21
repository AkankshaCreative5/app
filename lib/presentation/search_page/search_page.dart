import 'package:flutter/material.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:akanksha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:akanksha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:akanksha_s_application2/widgets/custom_search_view.dart';
import 'widgets/menulist1_item_widget.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 3.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 11.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      right: 12.h,
                    ),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "What do you want to order?",
                    ),
                  ),
                  SizedBox(height: 21.v),
                  Text(
                    "Menu",
                    style: CustomTextStyles.headlineSmall_1,
                  ),
                  SizedBox(height: 18.v),
                  _buildMenuList(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitleTwo(
        text: "Explore Your Favorite Food",
        margin: EdgeInsets.only(left: 21.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBell01,
          margin: EdgeInsets.fromLTRB(12.h, 13.v, 21.h, 18.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMenuList(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return Menulist1ItemWidget();
          },
        ),
      ),
    );
  }
}
