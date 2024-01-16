import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';

class NotificationNewsPromoScreen extends StatelessWidget {
  const NotificationNewsPromoScreen({Key? key})
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
            horizontal: 24.h,
            vertical: 41.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "October 2021",
                  style: CustomTextStyles.titleMediumOpenSansBold18,
                ),
              ),
              SizedBox(height: 16.v),
              _buildFortyTwo(context),
              SizedBox(height: 30.v),
              _buildAutoLayoutVertical(context),
              SizedBox(height: 23.v),
              _buildAutoLayoutVertical1(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
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
        text: "Notification",
        margin: EdgeInsets.only(
          top: 32.v,
          bottom: 5.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFortyTwo(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Promotion",
              style: CustomTextStyles.titleMediumOpenSansPrimary,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Oct 21",
                    style: theme.textTheme.labelLarge,
                  ),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(
                      left: 7.h,
                      top: 5.v,
                      bottom: 5.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray50001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "08.00",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10.v),
        Container(
          width: 320.h,
          margin: EdgeInsets.only(right: 6.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Today ",
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: "50% discount",
                  style: CustomTextStyles.titleSmallBold,
                ),
                TextSpan(
                  text: " on all ",
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: "Books",
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: " in ",
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: "Novel category",
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: " with online orders worldwide.",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Promotion",
              style: CustomTextStyles.titleMediumOpenSansPrimary,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Text(
                "Oct 08",
                style: theme.textTheme.labelLarge,
              ),
            ),
            Container(
              height: 4.adaptSize,
              width: 4.adaptSize,
              margin: EdgeInsets.only(
                left: 6.h,
                top: 9.v,
                bottom: 9.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray50001,
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                top: 3.v,
                bottom: 3.v,
              ),
              child: Text(
                "20.30",
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
        SizedBox(height: 9.v),
        Container(
          width: 282.h,
          margin: EdgeInsets.only(right: 44.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Buy 2 get 1 free",
                  style: CustomTextStyles.titleSmallBold,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "for since books",
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: " from 08 - 10 October 2021.",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "September 2021",
          style: CustomTextStyles.titleMediumOpenSansBold18,
        ),
        SizedBox(height: 14.v),
        Row(
          children: [
            Text(
              "Information",
              style: CustomTextStyles.titleMediumOpenSansBlueA200,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 4.v,
                bottom: 2.v,
              ),
              child: Text(
                "Sept 16",
                style: theme.textTheme.labelLarge,
              ),
            ),
            Container(
              height: 4.adaptSize,
              width: 4.adaptSize,
              margin: EdgeInsets.only(
                left: 6.h,
                top: 9.v,
                bottom: 8.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray50001,
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                top: 3.v,
                bottom: 3.v,
              ),
              child: Text(
                "11.00",
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.v),
        Text(
          "There is a new book now are available ",
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
