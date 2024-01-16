import '../home_set_location1_bottomsheet/widgets/autolayouthorizontal2_item_widget.dart';import 'package:flutter/material.dart';import 'package:kamran_zafar_s_application1/core/app_export.dart';import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';import 'package:kamran_zafar_s_application1/widgets/custom_icon_button.dart';class HomeSetLocation1Bottomsheet extends StatelessWidget {const HomeSetLocation1Bottomsheet({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(width: 56.h, child: Divider(color: appTheme.gray20001)), SizedBox(height: 15.v), _buildAutoLayoutHorizontal(context), SizedBox(height: 23.v), _buildAutoLayoutHorizontal1(context), SizedBox(height: 23.v), Divider(), SizedBox(height: 15.v), _buildAutoLayoutVertical(context), SizedBox(height: 92.v), CustomElevatedButton(text: "Confirmation", onPressed: () {onTapConfirmation(context);}), SizedBox(height: 36.v)])); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Detail Address", style: CustomTextStyles.titleMediumOpenSansBold18), CustomImageView(imagePath: ImageConstant.imgFramePrimary24x24, height: 24.adaptSize, width: 24.adaptSize)]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal1(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 19.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 20.v), child: CustomIconButton(height: 48.adaptSize, width: 48.adaptSize, padding: EdgeInsets.all(12.h), child: CustomImageView(imagePath: ImageConstant.imgLinkedin))), Expanded(child: Padding(padding: EdgeInsets.only(left: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Utama Street No.20", style: CustomTextStyles.titleMediumSemiBold), SizedBox(height: 8.v), SizedBox(width: 243.h, child: Text("Dumbo Street No.20, Dumbo, New York 10001, United States of America", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumGray50001.copyWith(height: 1.40)))])))]))); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Save Address As", style: CustomTextStyles.titleMediumOpenSansBold_1), SizedBox(height: 17.v), Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(2, (index) => Autolayouthorizontal2ItemWidget()))]); } 
/// Navigates to the homeSetLocationScreen when the action is triggered.
onTapConfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeSetLocationScreen); } 
 }