import 'package:flutter/material.dart';import 'package:kamran_zafar_s_application1/core/app_export.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';class DetailNewsPromoScreen extends StatelessWidget {const DetailNewsPromoScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [_buildOrderNow(context), SizedBox(height: 24.v), SizedBox(width: 323.h, child: Text("Today 50% discount on all products  in Chapter with online orders", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumOpenSansOnPrimaryContainer.copyWith(height: 1.35))), SizedBox(height: 12.v), SizedBox(width: 324.h, child: Text("Excuse me… Who could ever resist a discount feast? 👀", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumGray600.copyWith(height: 1.40))), SizedBox(height: 15.v), SizedBox(width: 325.h, child: Text("Hear me out. Today, October 21, 2021, Chapter has a 50% discount for any product. What are you waiting for, let's order now before it runs out.", maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumGray600.copyWith(height: 1.40))), SizedBox(height: 16.v), SizedBox(width: 327.h, child: Text("All of the products are discounted, just order through the Chapter app to enjoy this discount. From the best to the best we have prepared for you, may you always be happy when ordering at Chapter. Please choose the best product you want.", maxLines: 5, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumGray600.copyWith(height: 1.40))), SizedBox(height: 15.v), Align(alignment: Alignment.centerLeft, child: Container(width: 303.h, margin: EdgeInsets.only(right: 23.h), child: Text("So, what’s your call? Let’s roll, order your comfort food now 😉", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumGray600.copyWith(height: 1.40)))), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 34.v, bottom: 8.v), onTap: () {onTapArrowDown(context);}), centerTitle: true, title: AppbarSubtitle(text: "Promotion", margin: EdgeInsets.only(top: 32.v, bottom: 5.v)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildOrderNow(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v), decoration: AppDecoration.fillPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 11.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 129.h, child: Text("50% Discount\nOn All Desert", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleLargePrimary.copyWith(height: 1.40))), SizedBox(height: 4.v), Opacity(opacity: 0.8, child: Text("Grab itu now!", style: CustomTextStyles.titleSmallPrimary)), SizedBox(height: 33.v), CustomElevatedButton(height: 36.v, width: 118.h, text: "Order Now", buttonStyle: CustomButtonStyles.fillPrimaryTL18, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)])), CustomImageView(imagePath: ImageConstant.imgImage161x134, height: 161.v, width: 134.h, radius: BorderRadius.circular(7.h), margin: EdgeInsets.only(bottom: 5.v))])); } 
/// Navigates to the notificationDeliveryScreen when the action is triggered.
onTapArrowDown(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationDeliveryScreen); } 
 }