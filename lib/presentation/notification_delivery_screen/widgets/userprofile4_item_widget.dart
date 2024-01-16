import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  const Userprofile4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay48x48,
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Carrie Fisher",
                  style: CustomTextStyles.titleMediumSemiBold,
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: 126.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivered",
                        style: CustomTextStyles.titleSmallGreen700,
                      ),
                      Container(
                        height: 4.adaptSize,
                        width: 4.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 6.v),
                        decoration: BoxDecoration(
                          color: appTheme.gray20001,
                          borderRadius: BorderRadius.circular(
                            2.h,
                          ),
                        ),
                      ),
                      Text(
                        "5 items",
                        style: CustomTextStyles.titleSmallGray600,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
