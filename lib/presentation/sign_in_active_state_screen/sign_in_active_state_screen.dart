import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/presentation/home_page/home_page.dart';
import 'package:kamran_zafar_s_application1/presentation/sign_up_active_state_right_password_screen/sign_up_active_state_right_password_screen.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_outlined_button.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_text_form_field.dart';

class SignInActiveStateScreen extends StatelessWidget {
  SignInActiveStateScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 14.v),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Welcome Back 👋",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Sign to your account",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 26.v),
                    _buildTypeEmailStateFill(context),
                    SizedBox(height: 17.v),
                    _buildTypePasswordStateFill(context),
                    SizedBox(height: 18.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Forgot Password?",
                          style: CustomTextStyles.titleSmallPrimarySemiBold,
                        ),
                      ),
                    ),
                    SizedBox(height: 24.v),
                    _buildLogin(context),
                    SizedBox(height: 29.v),
                    _buildLine(context),
                    SizedBox(height: 27.v),
                    CustomOutlinedButton(
                      text: "Sign in with Google",
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 16.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGoogleOriginal,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    CustomOutlinedButton(
                      text: "Sign in with Apple",
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 16.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgAppleOriginal,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.fromLTRB(24.h, 34.v, 327.h, 8.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeEmailStateFill(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 7.v),
          CustomTextFormField(
            controller: emailController,
            hintText: "example@email.com",
            textInputType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTypePasswordStateFill(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
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
      ),
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return SizedBox(
      height: 94.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 137.h,
                top: 15.v,
              ),
              child: Text(
                "Login",
                style: CustomTextStyles.titleMediumWhiteA700,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomElevatedButton(
                    text: "Login",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }),
                SizedBox(height: 27.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don’t have an account?",
                        style: CustomTextStyles.titleMediumGray50001_1,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      // TextSpan(
                      //   text: "Sign Up",
                      //   style: CustomTextStyles.titleMediumPrimary_1,
                      // ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                CustomElevatedButton(
                    text: "Sigunp",
                    buttonStyle: CustomButtonStyles.none,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SignUpActiveStateRightPasswordScreen()),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 7.v,
            ),
            child: SizedBox(
              width: 158.h,
              child: Divider(),
            ),
          ),
          Text(
            "Or with",
            style: CustomTextStyles.bodyMediumGray50001,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 7.v,
            ),
            child: SizedBox(
              width: 158.h,
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
