import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_text_form_field.dart';

class SignUpActiveStateRightPasswordScreen extends StatelessWidget {
  SignUpActiveStateRightPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

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
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 18.v,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Sign Up",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Create account and choose favorite menu",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 29.v),
                    _buildTypeNameStateFill(context),
                    SizedBox(height: 17.v),
                    _buildTypeEmailStateFill(context),
                    SizedBox(height: 17.v),
                    _buildTypePasswordStateFill(context),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                      text: "Register",
                    ),
                    SizedBox(height: 27.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Have an account?",
                            style: CustomTextStyles.titleMediumGray50001_1,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          // TextSpan(
                          //   text: "Sign In",

                          //   style: CustomTextStyles.titleMediumPrimary_1,
                          // ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Spacer(),
                    SizedBox(height: 36.v),
                    Container(
                      width: 230.h,
                      margin: EdgeInsets.only(
                        left: 49.h,
                        right: 48.h,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "By clicking Register, you agree to our ",
                              style: CustomTextStyles.titleSmallGray50001_1,
                            ),
                            TextSpan(
                              text: "Terms, Data Policy.",
                              style: CustomTextStyles.titleSmallPrimary_1,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
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
      height: 56.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.fromLTRB(25.h, 24.v, 326.h, 8.v),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildTypeNameStateFill(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 7.v),
          CustomTextFormField(
            controller: nameController,
            hintText: "John Doe",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeEmailStateFill(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
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
            hintText: "Johndoey@email.com",
            textInputType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTypePasswordStateFill(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
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
}
