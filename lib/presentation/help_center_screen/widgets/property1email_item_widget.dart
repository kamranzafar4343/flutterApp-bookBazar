import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Property1emailItemWidget extends StatelessWidget {
  const Property1emailItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 158.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillWhiteA,
            child: CustomImageView(
              imagePath: ImageConstant.imgLockPrimary,
            ),
          ),
          SizedBox(height: 17.v),
          Text(
            "Email",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 4.v),
          Text(
            "Send to your email",
            style: CustomTextStyles.bodyMediumGray50001,
          ),
        ],
      ),
    );
  }
}
