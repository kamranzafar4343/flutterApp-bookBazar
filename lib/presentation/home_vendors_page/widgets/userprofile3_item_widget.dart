import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  const Userprofile3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 101.adaptSize,
          width: 101.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 45.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroupDeepOrange700,
            height: 9.v,
            width: 68.h,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          "Wattpad",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 5.v),
        CustomRatingBar(
          ignoreGestures: true,
          initialRating: 0,
        ),
      ],
    );
  }
}
