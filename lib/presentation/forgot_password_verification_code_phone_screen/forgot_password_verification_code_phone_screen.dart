import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_pin_code_text_field.dart';

class ForgotPasswordVerificationCodePhoneScreen extends StatelessWidget {
  const ForgotPasswordVerificationCodePhoneScreen({Key? key})
      : super(
          key: key,
        );

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
              Text(
                "Verification Code",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 8.v),
              Container(
                width: 309.h,
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "Please enter the code we just sent to phone number  ",
                        style: theme.textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: "(+965) 123 435 7565",
                        style: CustomTextStyles.bodyLargeGray90001,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 38.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 35.h,
                  right: 36.h,
                ),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 26.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "If you didn’t receive a code? ",
                      style: CustomTextStyles.titleSmallGray50001SemiBold,
                    ),
                    TextSpan(
                      text: "Resend",
                      style: CustomTextStyles.titleSmallPrimarySemiBold_1,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 43.v),
              CustomElevatedButton(
                text: "Continue",
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
}
