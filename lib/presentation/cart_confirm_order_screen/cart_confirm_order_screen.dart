import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_icon_button.dart';

class CartConfirmOrderScreen extends StatelessWidget {
  const CartConfirmOrderScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 24.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  _buildAutoLayoutVertical1(context),
                  SizedBox(height: 16.v),
                  _buildSummary(context),
                  SizedBox(height: 16.v),
                  _buildAutoLayoutVertical(
                    context,
                    payment: "Date and time",
                    payment1: "Date & time",
                    chooseYourPayment: "Choose date and time ",
                  ),
                  SizedBox(height: 16.v),
                  _buildAutoLayoutVertical(
                    context,
                    payment: "Payment",
                    payment1: "Payment",
                    chooseYourPayment: "Choose your payment",
                  ),
                  SizedBox(height: 34.v),
                  CustomElevatedButton(
                    text: "Order",
                  ),
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
        text: "Confirm Order",
        margin: EdgeInsets.only(
          top: 32.v,
          bottom: 5.v,
        ),
      ),
      actions: [
        Container(
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.fromLTRB(24.h, 34.v, 24.h, 8.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUserGray90001,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(
                    left: 13.h,
                    right: 3.h,
                    bottom: 16.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.red400,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                    border: Border.all(
                      color: appTheme.whiteA700,
                      width: 1.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGray20001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Address",
            style: CustomTextStyles.titleMediumOpenSansBold18,
          ),
          SizedBox(height: 9.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 72.v),
                child: CustomIconButton(
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLinkedin,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Utama Street No.20",
                    style: CustomTextStyles.titleMediumSemiBold,
                  ),
                  SizedBox(height: 4.v),
                  SizedBox(
                    width: 191.h,
                    child: Text(
                      "Dumbo Street No.20, Dumbo, New York 10001, United States",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumGray50001.copyWith(
                        height: 1.40,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                    height: 36.v,
                    width: 98.h,
                    text: "Change",
                    buttonStyle: CustomButtonStyles.fillPrimaryContainerTL18,
                    buttonTextStyle: CustomTextStyles.titleSmallPrimaryBold,
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 20.v,
                  bottom: 72.v,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSummary(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.outlineGray200011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "Summary",
                style: CustomTextStyles.titleMediumOpenSansBold18,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildAutoLayoutHorizontal(
              context,
              shipping: "Price",
              price: "87.10",
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildAutoLayoutHorizontal(
              context,
              shipping: "Shipping",
              price: "2",
            ),
          ),
          SizedBox(height: 16.v),
          Divider(
            indent: 16.h,
            endIndent: 16.h,
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildAutoLayoutHorizontal(
              context,
              shipping: "Total Payment",
              price: "89.10",
            ),
          ),
          SizedBox(height: 16.v),
          Divider(),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Row(
                children: [
                  Text(
                    "See details",
                    style: CustomTextStyles.titleSmallPrimaryBold,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightPrimary,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(left: 4.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAutoLayoutHorizontal(
    BuildContext context, {
    required String shipping,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            shipping,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray90001,
            ),
          ),
        ),
        Text(
          price,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.gray90001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildAutoLayoutVertical(
    BuildContext context, {
    required String payment,
    required String payment1,
    required String chooseYourPayment,
  }) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGray20001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            payment,
            style: CustomTextStyles.titleMediumOpenSansBold18.copyWith(
              color: appTheme.gray90001,
            ),
          ),
          SizedBox(height: 12.v),
          Row(
            children: [
              CustomIconButton(
                height: 44.adaptSize,
                width: 44.adaptSize,
                padding: EdgeInsets.all(10.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFramePrimary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      payment1,
                      style: CustomTextStyles.titleSmallSemiBold.copyWith(
                        color: appTheme.gray90001,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      chooseYourPayment,
                      style: CustomTextStyles.titleSmallGray600.copyWith(
                        color: appTheme.gray600,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 10.v),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
