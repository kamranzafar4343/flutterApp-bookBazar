import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/presentation/sign_in_active_state_screen/sign_in_active_state_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/sign_up_active_state_right_password_screen/sign_up_active_state_right_password_screen.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingFourScreen extends StatelessWidget {
  const OnboardingFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 1.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrameWhiteA700320x320,
                height: 320.adaptSize,
                width: 320.adaptSize,
              ),
              SizedBox(height: 13.v),
              Text(
                "Start Your Adventure",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 44.v),
              Container(
                width: 231.h,
                margin: EdgeInsets.only(
                  left: 48.h,
                  right: 47.h,
                ),
                child: Text(
                  "Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let's go!",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 4,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: appTheme.gray20001,
                    activeDotScale: 2.0,
                    dotHeight: 4.v,
                    dotWidth: 4.h,
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                height: 56.v,
                text: "Get Started",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignInActiveStateScreen()),
                  );
                },
                buttonStyle: CustomButtonStyles.fillPrimaryTL12,
              ),
              SizedBox(height: 8.v),
              CustomElevatedButton(
                height: 56.v,
                text: "Sign in",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignInActiveStateScreen()),
                  );
                },
                buttonStyle: CustomButtonStyles.fillPrimaryContainerTL12,
                buttonTextStyle: CustomTextStyles.titleMediumOpenSansPrimary,
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
      height: 63.v,
      title: AppbarSubtitleOne(
        text: "Skip",
        margin: EdgeInsets.only(left: 40.h),
      ),
    );
  }
}
