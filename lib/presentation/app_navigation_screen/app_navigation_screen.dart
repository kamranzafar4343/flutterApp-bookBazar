import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "1. Spash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.spashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications Empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "2.4 Sign Up - Active State Wrong Password",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.signUpActiveStateWrongPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "2.3 Sign Up - Active State Right Password",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.signUpActiveStateRightPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "4.3 Home - Authors - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeAuthorsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "8.1 Notification - News & Promo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationNewsPromoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "3.5 Forgot Password - Create New Password",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.forgotPasswordCreateNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "7 Order Status - Order Success Waiting Shipper",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .orderStatusOrderSuccessWaitingShipperScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "7.3 Order Status - Order Received & Rating",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.orderStatusOrderReceivedRatingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "9.1 My Account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "4.2 Home - Set Location",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeSetLocationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "6.1 Cart - Confirm Order visa added",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.cartConfirmOrderVisaAddedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "3.6 Forgot Password - Success Create New Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .forgotPasswordSuccessCreateNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "9.7 Offers",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.offersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.1 Onboarding Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3. Forgot Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.7 Sign Up - Verification Code Phone",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.signUpVerificationCodePhoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "6.1 Cart - Confirm Order",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cartConfirmOrderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "4. Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "3.3 Forgot Password - Verification Code Email",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .forgotPasswordVerificationCodeEmailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3.1 Forgot Password - With Email",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordWithEmailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.2 Sign Up - Empte State",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpEmpteStateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "5.1 Menu-Search",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.menuSearchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "3.4 Forgot Password - Verification Code Phone",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .forgotPasswordVerificationCodePhoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.5 Sign Up - Verification Code Email",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.signUpVerificationCodeEmailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3.2 Forgot Password - With Phone",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordWithPhoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "4.3 Home - Authors - Inner page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeAuthorsInnerPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "9.4 Order History",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.orderHistoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.3 Onboarding Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2. Sign In - Empty State",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInEmptyStateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.1 Sign In - Active State",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInActiveStateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "8.2 Detail News & Promo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailNewsPromoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "9.5 Help Center",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helpCenterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "9.3 Your Favorites",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.yourFavoritesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "4.3 Home - Vendors - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeVendorsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "8. Notification - Delivery",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationDeliveryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.6 Sign Up - Input Phone Number",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpInputPhoneNumberScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1.2 Onboarding Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.8 Sign Up - Success Verification",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.signUpSuccessVerificationScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
