import '../help_center_screen/widgets/property1email_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildArrowDown(context),
              SizedBox(height: 28.v),
              _buildProperty1Email(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 34.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomAppBar(
            height: 28.v,
            leadingWidth: 48.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowDownGray50,
              margin: EdgeInsets.only(
                left: 24.h,
                bottom: 4.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "Order History",
            ),
          ),
          SizedBox(height: 29.v),
          Padding(
            padding: EdgeInsets.only(right: 101.h),
            child: Text(
              "Help Center",
              style: CustomTextStyles.headlineSmallWhiteA700,
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            width: 325.h,
            margin: EdgeInsets.only(
              left: 44.h,
              right: 6.h,
            ),
            child: Text(
              "Tell us how we can help 👋\nChapter are standing by for service & support!",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeDeeppurple100.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProperty1Email(BuildContext context) {
    return SizedBox(
      height: 151.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return Property1emailItemWidget();
        },
      ),
    );
  }
}
