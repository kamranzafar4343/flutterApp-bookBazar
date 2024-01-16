import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_text_form_field.dart';

class SignUpActiveStateWrongPasswordScreen extends StatelessWidget {
  SignUpActiveStateWrongPasswordScreen({Key? key})
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
                  horizontal: 24.h,
                  vertical: 18.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "Create account and choose favorite menu",
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 29.v),
                    _buildTypeNameStateFill(context),
                    SizedBox(height: 17.v),
                    _buildTypeEmailStateFill(context),
                    SizedBox(height: 17.v),
                    _buildTypePasswordStateFocus(context),
                    SizedBox(height: 15.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgProperty1X,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(
                            top: 2.v,
                            bottom: 1.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "Minimum 8 characters",
                            style: CustomTextStyles.bodyMediumOpenSansGray50001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 9.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgProperty1Check,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(
                            top: 1.v,
                            bottom: 2.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "Atleast 1 number (1-9)",
                            style: CustomTextStyles.bodyMediumOpenSansGray50001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgProperty1Check,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(bottom: 3.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(
                              "Atleast lowercase or uppercase letters",
                              style:
                                  CustomTextStyles.bodyMediumOpenSansGray50001,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22.v),
                    CustomElevatedButton(
                      text: "Register",
                    ),
                    SizedBox(height: 27.v),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Have an account?",
                              style: CustomTextStyles.titleMediumGray50001_1,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "Sign In",
                              style: CustomTextStyles.titleMediumPrimary_1,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 48.v),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 230.h,
                        margin: EdgeInsets.only(
                          left: 48.h,
                          right: 47.h,
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
      styleType: Style.bgFill,
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
          hintText: "John Doe",
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
          hintText: "Johndoey@email.com",
          textInputType: TextInputType.emailAddress,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTypePasswordStateFocus(BuildContext context) {
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
          hintText: "|",
          hintStyle: CustomTextStyles.titleSmallPrimary_2,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
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
          contentPadding: EdgeInsets.only(
            left: 30.h,
            top: 15.v,
            bottom: 15.v,
          ),
        ),
      ],
    );
  }
}
