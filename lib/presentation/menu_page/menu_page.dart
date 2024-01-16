import '../menu_page/widgets/productcard2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MenuPage extends StatefulWidget {
  const MenuPage({Key? key})
      : super(
          key: key,
        );

  @override
  MenuPageState createState() => MenuPageState();
}

class MenuPageState extends State<MenuPage>
    with AutomaticKeepAliveClientMixin<MenuPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 38.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildProductCard(context),
                      SizedBox(height: 22.v),
                      _buildAutoLayoutHorizontal(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 213.v,
        crossAxisCount: 2,
        mainAxisSpacing: 11.h,
        crossAxisSpacing: 11.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Productcard2ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 5.h),
          child: _buildSizeLarge(context),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: _buildSizeLarge(context),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSizeLarge(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 158.adaptSize,
          width: 158.adaptSize,
          decoration: AppDecoration.fillPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgImage15,
            height: 158.adaptSize,
            width: 158.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
        ),
        SizedBox(height: 8.v),
        Text(
          "Bright Young Women",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 4.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "27.12",
            style: CustomTextStyles.titleSmallPrimaryBold,
          ),
        ),
      ],
    );
  }
}
