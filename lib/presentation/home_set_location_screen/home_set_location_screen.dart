import 'package:flutter/material.dart';import 'package:kamran_zafar_s_application1/core/app_export.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_trailing_image.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';import 'package:kamran_zafar_s_application1/widgets/custom_text_form_field.dart';import 'package:kamran_zafar_s_application1/presentation/home_set_location1_bottomsheet/home_set_location1_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class HomeSetLocationScreen extends StatelessWidget {HomeSetLocationScreen({Key? key}) : super(key: key);

TextEditingController phoneController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController governoratevalueController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController blockTwoController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

TextEditingController nameController2 = TextEditingController();

TextEditingController floorOptionTwoController = TextEditingController();

TextEditingController flatOptionController = TextEditingController();

TextEditingController avenueOptionTwoController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: SingleChildScrollView(padding: EdgeInsets.only(top: 17.v), child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Column(children: [_buildTypeEmailStateDefault(context), SizedBox(height: 17.v), _buildTypeEmailStateDefault1(context), SizedBox(height: 17.v), _buildTypeEmailStateDefault2(context), SizedBox(height: 18.v), _buildTypeEmailStateDefault3(context), SizedBox(height: 17.v), _buildTypeEmailStateDefault4(context), SizedBox(height: 17.v), _buildTypeEmailStateDefault5(context), SizedBox(height: 18.v), _buildTypeEmailStateDefault6(context), SizedBox(height: 18.v), _buildTypeEmailStateDefault7(context), SizedBox(height: 18.v), _buildTypeEmailStateDefault8(context), SizedBox(height: 18.v), _buildTypeEmailStateDefault9(context), SizedBox(height: 22.v), CustomElevatedButton(text: "Confirmation", onPressed: () {onTapConfirmation(context);})])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 34.v, bottom: 8.v)), centerTitle: true, title: AppbarSubtitle(text: "Location", margin: EdgeInsets.only(top: 32.v, bottom: 5.v)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgSettingsPrimary, margin: EdgeInsets.fromLTRB(24.h, 34.v, 24.h, 8.v), onTap: () {onTapSettings(context);})], styleType: Style.bgFill); } 
/// Section Widget
Widget _buildTypeEmailStateDefault(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Phone", style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomTextFormField(controller: phoneController, hintText: "Phone", textInputType: TextInputType.phone)]); } 
/// Section Widget
Widget _buildTypeEmailStateDefault1(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Name", style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomTextFormField(controller: nameController, hintText: "Name")]); } 
/// Section Widget
Widget _buildTypeEmailStateDefault2(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Governorate", style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomTextFormField(controller: governoratevalueController, hintText: "Governorate")]); } 
/// Section Widget
Widget _buildTypeEmailStateDefault3(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("City", style: theme.textTheme.titleSmall), SizedBox(height: 6.v), CustomTextFormField(controller: cityController, hintText: "City")]); } 
/// Section Widget
Widget _buildTypeEmailStateDefault4(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Block", style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomTextFormField(controller: blockTwoController, hintText: "Block")]); } 
/// Section Widget
Widget _buildTypeEmailStateDefault5(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Street name /number", style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomTextFormField(controller: nameController1, hintText: "Street name /number", textInputType: TextInputType.number)]); } 
/// Section Widget
Widget _buildTypeEmailStateDefault6(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Building name/number", style: theme.textTheme.titleSmall), SizedBox(height: 6.v), CustomTextFormField(controller: nameController2, hintText: "Building name/number", textInputType: TextInputType.number)]); } 
/// Section Widget
Widget _buildTypeEmailStateDefault7(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Floor (option)", style: theme.textTheme.titleSmall), SizedBox(height: 6.v), CustomTextFormField(controller: floorOptionTwoController, hintText: "Floor (option)")]); } 
/// Section Widget
Widget _buildTypeEmailStateDefault8(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Flat(option)", style: theme.textTheme.titleSmall), SizedBox(height: 6.v), CustomTextFormField(controller: flatOptionController, hintText: "Flat(option)")]); } 
/// Section Widget
Widget _buildTypeEmailStateDefault9(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Avenue (option)", style: theme.textTheme.titleSmall), SizedBox(height: 6.v), CustomTextFormField(controller: avenueOptionTwoController, hintText: "Avenue (option)", textInputAction: TextInputAction.done)]); } 

/// Shows a modal bottom sheet with [HomeSetLocation1Bottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSettings(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>HomeSetLocation1Bottomsheet(),isScrollControlled: true); } 
/// Navigates to the cartConfirmOrderVisaAddedScreen when the action is triggered.
onTapConfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.cartConfirmOrderVisaAddedScreen); } 
 }
