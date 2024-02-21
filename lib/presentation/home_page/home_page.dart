import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:akanksha_s_application2/core/app_export.dart';
import 'package:akanksha_s_application2/widgets/custom_outlined_button.dart';
import 'widgets/menulist_item_widget.dart';
import 'widgets/nineteenslider_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnError,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 29.v),
            child: Column(
              children: [
                SizedBox(height: 19.v),
                _buildExploreYourFavoriteRow(context),
                SizedBox(height: 63.v),
                _buildNineteenSlider(context),
                SizedBox(height: 30.v),
                _buildPopularRow(context),
                SizedBox(height: 13.v),
                _buildMenuList(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExploreYourFavoriteRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Explore Your Favorite Food",
            style: theme.textTheme.headlineSmall,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBell01,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 12.h,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteenSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 172.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex = index;
          },
        ),
        itemCount: 2,
        itemBuilder: (context, index, realIndex) {
          return NineteensliderItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPopularRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 33.h,
          right: 14.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 6.v),
              child: Text(
                "Popular",
                style: CustomTextStyles.bodyLargeYuGothicUIBlack900,
              ),
            ),
            CustomOutlinedButton(
              height: 25.v,
              width: 80.h,
              text: "View Menu",
              margin: EdgeInsets.only(bottom: 3.v),
              buttonStyle: CustomButtonStyles.outlineSecondaryContainerTL5,
              buttonTextStyle: CustomTextStyles.bodySmallAmber500,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 25.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return MenulistItemWidget();
        },
      ),
    );
  }
}
