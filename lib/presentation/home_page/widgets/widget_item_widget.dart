import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  const WidgetItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroupBlack90001,
        height: 17.v,
        width: 50.h,
        margin: EdgeInsets.symmetric(vertical: 31.v),
      ),
    );
  }
}
