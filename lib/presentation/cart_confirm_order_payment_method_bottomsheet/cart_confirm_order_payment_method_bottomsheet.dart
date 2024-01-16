import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CartConfirmOrderPaymentMethodBottomsheet extends StatelessWidget {
  const CartConfirmOrderPaymentMethodBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 56.h,
            child: Divider(
              color: appTheme.gray20001,
            ),
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Your Payments",
              style: CustomTextStyles.titleMediumOpenSansBold18,
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            padding: EdgeInsets.all(15.h),
            decoration: AppDecoration.outlinePrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 15.v,
                  ),
                  decoration: AppDecoration.fillBlueA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder20,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup,
                    height: 9.v,
                    width: 26.h,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "KNET",
                    style: CustomTextStyles.titleMediumOpenSansBold_1,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightGray90001,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 8.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            height: 72.v,
            width: 327.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    margin: EdgeInsets.only(left: 16.h),
                    decoration: BoxDecoration(
                      color: appTheme.red400,
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(15.h),
                    decoration: AppDecoration.outlineGray200011.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: AppDecoration.fillAmberA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder20,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrameWhiteA700,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 8.v,
                            bottom: 9.v,
                          ),
                          child: Text(
                            "Credit Card",
                            style: CustomTextStyles.titleMediumOpenSansBold_1,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRightGray90001,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 8.v),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 44.v),
        ],
      ),
    );
  }
}
