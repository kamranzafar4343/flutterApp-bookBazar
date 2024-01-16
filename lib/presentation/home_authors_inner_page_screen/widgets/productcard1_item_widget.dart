import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  const Productcard1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 158.adaptSize,
          width: 158.adaptSize,
          decoration: AppDecoration.fillPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1158x158,
            height: 158.adaptSize,
            width: 158.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          "The Da vinci Code",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 8.v),
        Text(
          "19.99",
          style: CustomTextStyles.titleSmallPrimaryBold,
        ),
      ],
    );
  }
}
