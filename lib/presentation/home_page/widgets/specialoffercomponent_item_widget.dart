import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SpecialoffercomponentItemWidget extends StatelessWidget {
  const SpecialoffercomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          right: 24.h,
          bottom: 36.v,
        ),
        decoration: AppDecoration.fillPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 26.v,
                bottom: 24.v,
              ),
              child: Column(
                children: [
                  Text(
                    "Special Offer",
                    style: CustomTextStyles.titleLarge_1,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Discount 25%",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                    height: 36.v,
                    width: 118.h,
                    text: "Order Now",
                    buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                    buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                  ),
                ],
              ),
            ),
            Container(
              height: 145.v,
              width: 139.h,
              margin: EdgeInsets.only(
                left: 44.h,
                top: 1.v,
              ),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 104.adaptSize,
                        width: 104.adaptSize,
                        margin: EdgeInsets.only(bottom: 13.v),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage145x99,
                    height: 145.v,
                    width: 99.h,
                    radius: BorderRadius.circular(
                      3.h,
                    ),
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
