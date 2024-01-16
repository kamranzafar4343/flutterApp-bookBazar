import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class CartEmptyPage extends StatelessWidget {
  const CartEmptyPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 146.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroupGray300,
                height: 180.adaptSize,
                width: 180.adaptSize,
              ),
              SizedBox(height: 28.v),
              Text(
                "There is no products",
                style: CustomTextStyles.titleMedium18,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "My Cart",
        margin: EdgeInsets.only(
          top: 35.v,
          bottom: 2.v,
        ),
      ),
      actions: [
        Container(
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.fromLTRB(24.h, 34.v, 24.h, 8.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUserGray90001,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(
                    left: 13.h,
                    right: 3.h,
                    bottom: 16.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.red400,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                    border: Border.all(
                      color: appTheme.whiteA700,
                      width: 1.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }
}
