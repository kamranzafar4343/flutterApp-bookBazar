import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  const ProductcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 127.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage2150x127,
            height: 150.v,
            width: 127.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "The Kite Runner",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 5.v),
          Text(
            "14.99",
            style: CustomTextStyles.labelLargePrimaryBold,
          ),
        ],
      ),
    );
  }
}
