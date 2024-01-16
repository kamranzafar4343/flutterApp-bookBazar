import '../order_history_screen/widgets/userprofile2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 23.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "October 2021",
                style: CustomTextStyles.titleMediumOpenSansBold18,
              ),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPlay48x48,
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        children: [
                          Text(
                            "The Da vinci Code",
                            style: CustomTextStyles.titleMediumSemiBold,
                          ),
                          SizedBox(height: 8.v),
                          Container(
                            width: 126.h,
                            margin: EdgeInsets.only(right: 3.h),
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
                                  "1 items",
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
              ),
              SizedBox(height: 16.v),
              Expanded(
                child: Container(
                  decoration: AppDecoration.outlineGray20001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 7.5.v),
                        child: SizedBox(
                          width: 327.h,
                          child: Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: appTheme.gray20001,
                          ),
                        ),
                      );
                    },
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Userprofile2ItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 34.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Order History",
        margin: EdgeInsets.only(
          top: 34.v,
          bottom: 3.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }
}
