import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_text_form_field.dart';

class MyAccountScreen extends StatelessWidget {
  MyAccountScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildArrowDown(context),
                    _buildFifty(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return SizedBox(
      height: 190.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: AppDecoration.fillPrimaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 74.v),
                  CustomAppBar(
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
                      text: "My Account",
                      margin: EdgeInsets.only(
                        top: 35.v,
                        bottom: 2.v,
                      ),
                    ),
                    styleType: Style.bgFill,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse100x100,
            height: 100.adaptSize,
            width: 100.adaptSize,
            radius: BorderRadius.circular(
              50.h,
            ),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeNameStateFill(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: nameController,
          hintText: "John",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTypeEmailStateFill(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "Johndoe@email.com",
          textInputType: TextInputType.emailAddress,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTypePhoneStateFill(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone Number",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: phoneNumberController,
          hintText: "(+1) 234 567 890",
          prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 12.v, 16.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgCall,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 14.v,
            right: 30.h,
            bottom: 14.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTypePasswordStateFill(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: passwordController,
          textInputAction: TextInputAction.done,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
          obscureText: true,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFifty(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 19.v,
      ),
      child: Column(
        children: [
          Text(
            "Change Picture",
            style: CustomTextStyles.titleMediumPrimarySemiBold,
          ),
          SizedBox(height: 43.v),
          _buildTypeNameStateFill(context),
          SizedBox(height: 17.v),
          _buildTypeEmailStateFill(context),
          SizedBox(height: 17.v),
          _buildTypePhoneStateFill(context),
          SizedBox(height: 17.v),
          _buildTypePasswordStateFill(context),
          SizedBox(height: 40.v),
          CustomElevatedButton(
            text: "Save Changes",
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
