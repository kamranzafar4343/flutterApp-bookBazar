import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class CopybuttontextItemWidget extends StatelessWidget {
  const CopybuttontextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 66.h,
            child: Text(
              "50%\nOFF",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          SizedBox(height: 8.v),
          CustomElevatedButton(
            height: 36.v,
            width: 92.h,
            text: "Copy",
            buttonStyle: CustomButtonStyles.fillWhiteA,
            buttonTextStyle: CustomTextStyles.titleSmallPrimaryBold,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
