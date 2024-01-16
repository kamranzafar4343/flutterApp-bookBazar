import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';

class ForgotPasswordSuccessCreateNewPasswordScreen extends StatelessWidget {
  const ForgotPasswordSuccessCreateNewPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroupPrimary91x160,
                height: 91.v,
                width: 160.h,
              ),
              SizedBox(height: 42.v),
              Text(
                "Password Changed!",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 5.v),
              Container(
                width: 289.h,
                margin: EdgeInsets.symmetric(horizontal: 18.h),
                child: Text(
                  "Password changed successfully, you can login again with a new password",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 38.v),
              CustomElevatedButton(
                text: "Login",
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
