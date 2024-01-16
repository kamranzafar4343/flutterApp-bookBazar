import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_icon_button.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class DetailMenuOneBottomsheet extends StatelessWidget {
  const DetailMenuOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildNinetyFour(context),
          SizedBox(height: 24.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 106.h,
                  padding: EdgeInsets.symmetric(vertical: 8.v),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(4.h),
                        decoration: IconButtonStyleHelper.fillGray,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconMinus,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Text(
                          "1",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Container(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(4.h),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                    bottom: 11.v,
                  ),
                  child: Text(
                    "39.99",
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          _buildSeventy(context),
          SizedBox(height: 43.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "The Kite Runner",
              style: CustomTextStyles.titleLarge_1,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFavorite,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 4.v),
            ),
          ],
        ),
        SizedBox(height: 12.v),
        CustomImageView(
          imagePath: ImageConstant.imgSettings,
          height: 22.v,
          width: 78.h,
        ),
        SizedBox(height: 13.v),
        Container(
          width: 307.h,
          margin: EdgeInsets.only(right: 19.h),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra dignissim ac ac ac. Nibh et sed ac, eget malesuada.",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumGray50001.copyWith(
              height: 1.40,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNinetyFour(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 45.h),
          child: Column(
            children: [
              SizedBox(
                width: 56.h,
                child: Divider(
                  color: appTheme.gray20001,
                ),
              ),
              SizedBox(height: 19.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle,
                height: 313.v,
                width: 237.h,
                radius: BorderRadius.circular(
                  16.h,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.v),
        _buildAutoLayoutVertical(context),
        SizedBox(height: 22.v),
        Text(
          "Review",
          style: CustomTextStyles.titleMediumOpenSansBold18,
        ),
        SizedBox(height: 7.v),
        Row(
          children: [
            CustomRatingBar(
              initialRating: 0,
              itemSize: 24,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                top: 4.v,
                bottom: 2.v,
              ),
              child: Text(
                "(4.0)",
                style: CustomTextStyles.titleSmallSemiBold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeventy(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomElevatedButton(
          width: 200.h,
          text: "Continue shopping",
        ),
        CustomElevatedButton(
          width: 115.h,
          text: "View cart",
          buttonStyle: CustomButtonStyles.fillPrimaryContainer,
          buttonTextStyle: CustomTextStyles.titleMediumOpenSansPrimary,
        ),
      ],
    );
  }
}
