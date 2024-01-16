import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LogoutBottomsheet extends StatelessWidget {
  const LogoutBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 56.h,
              child: Divider(
                color: appTheme.gray20001,
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Text(
            "Logout",
            style: CustomTextStyles.titleMediumOpenSansBold18,
          ),
          SizedBox(height: 13.v),
          Container(
            width: 294.h,
            margin: EdgeInsets.only(right: 32.h),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeGray90001_1.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            text: "Logout",
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            text: "Cancel",
            buttonStyle: CustomButtonStyles.fillPrimaryContainer,
            buttonTextStyle: CustomTextStyles.titleMediumOpenSansPrimary,
          ),
          SizedBox(height: 31.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 134.h,
              child: Divider(
                color: appTheme.gray90001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
