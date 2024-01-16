import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 15.v),
          child: Column(
            children: [
              _buildAutoLayoutHorizontal1(context),
              Divider(),
              _buildAutoLayoutHorizontal(
                context,
                linkedin: ImageConstant.imgLock,
                address: "My Account",
              ),
              _buildAutoLayoutHorizontal(
                context,
                linkedin: ImageConstant.imgLinkedin,
                address: "Address",
              ),
              _buildAutoLayoutHorizontal(
                context,
                linkedin: ImageConstant.imgIconFire,
                address: "Offers & Promos",
              ),
              _buildAutoLayoutHorizontal(
                context,
                linkedin: ImageConstant.imgFavorite,
                address: "Your Favorites",
              ),
              _buildAutoLayoutHorizontal(
                context,
                linkedin: ImageConstant.imgMegaphone,
                address: "Order History",
              ),
              SizedBox(height: 5.v),
              _buildAutoLayoutHorizontal(
                context,
                linkedin: ImageConstant.imgUser,
                address: "Help Center",
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
      height: 74.v,
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal1(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          Divider(),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: 56.adaptSize,
                  width: 56.adaptSize,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 7.v,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
                        style: CustomTextStyles.titleMediumOpenSansBold_1,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "(+1) 234 567 890",
                        style: CustomTextStyles.bodyMediumGray50001,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.v,
                    bottom: 18.v,
                  ),
                  child: Text(
                    "Logout",
                    style: CustomTextStyles.titleSmallRed400Bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAutoLayoutHorizontal(
    BuildContext context, {
    required String linkedin,
    required String address,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: CustomImageView(
              imagePath: linkedin,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 11.v,
            ),
            child: Text(
              address,
              style: theme.textTheme.titleMedium!.copyWith(
                color: appTheme.gray90001,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray50001,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 8.v),
          ),
        ],
      ),
    );
  }
}
