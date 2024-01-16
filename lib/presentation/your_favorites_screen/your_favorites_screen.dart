import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';

class YourFavoritesScreen extends StatelessWidget {
  const YourFavoritesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTwelve(context),
              Column(
                children: [
                  _buildAutoLayoutHorizontal(context),
                  Divider(),
                  _buildAutoLayoutVertical(context),
                  _buildAutoLayoutVertical1(context),
                  SizedBox(height: 5.v),
                  _buildAutoLayoutVertical2(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          SizedBox(height: 16.v),
          CustomAppBar(
            leadingWidth: 48.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 34.v,
                bottom: 8.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "Your Favorites",
              margin: EdgeInsets.only(
                top: 32.v,
                bottom: 5.v,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay48x48,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "In in amet ultrices sit.",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 8.v),
                Text(
                  "19.99",
                  style: CustomTextStyles.titleSmallPrimaryBold,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFavorite,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 8.h),
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.fillWhiteA,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlay48x48,
                height: 48.adaptSize,
                width: 48.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bibendum facilisis.",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "27.12",
                      style: CustomTextStyles.titleSmallPrimaryBold,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgFavorite,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 12.v),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical1(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 8.h),
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.fillWhiteA,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlay48x48,
                height: 48.adaptSize,
                width: 48.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nulla et diam cras.",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "13.52",
                      style: CustomTextStyles.titleSmallPrimaryBold,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgFavorite,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 12.v),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical2(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 8.h),
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.fillWhiteA,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlay48x48,
                height: 48.adaptSize,
                width: 48.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Risus malesuada in.",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "31.00",
                      style: CustomTextStyles.titleSmallPrimaryBold,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgFavorite,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 12.v),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
