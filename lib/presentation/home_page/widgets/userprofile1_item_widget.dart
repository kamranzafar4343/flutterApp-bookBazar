import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 106.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage106x106,
              height: 106.adaptSize,
              width: 106.adaptSize,
              radius: BorderRadius.circular(
                53.h,
              ),
            ),
            SizedBox(height: 17.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                "Tess Gunty",
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                "Novelist",
                style: CustomTextStyles.bodyMediumGray50001,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
