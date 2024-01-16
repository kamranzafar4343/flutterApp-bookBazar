import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/presentation/onboarding_two_screen/onboarding_two_screen.dart';

class SpashScreen extends StatelessWidget {
  const SpashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 92.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGrid,
                      height: 37.adaptSize,
                      width: 37.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "Bazar.",
                        style: CustomTextStyles.headlineLargeRoboto,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        OnboardingTwoScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                          ),
                          child: Text('→')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 78.v),
              CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 316.v,
                width: 285.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
