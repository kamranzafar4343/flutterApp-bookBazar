import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_text_form_field.dart';

class ForgotPasswordWithPhoneScreen extends StatelessWidget {
  ForgotPasswordWithPhoneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 15.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Reset Password",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 8.v),
              SizedBox(
                width: 322.h,
                child: Text(
                  "Please enter your phone number, we will send a verification code to your phone number.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              _buildTypePhoneStateFill(context),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                text: "Send",
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
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.fromLTRB(24.h, 34.v, 327.h, 8.v),
      ),
      styleType: Style.bgFill,
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
          hintText: "(+965) 123 435 7565",
          textInputAction: TextInputAction.done,
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
}
