import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/presentation/spash_screen/spash_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/notifications_empty_screen/notifications_empty_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/sign_up_active_state_wrong_password_screen/sign_up_active_state_wrong_password_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/sign_up_active_state_right_password_screen/sign_up_active_state_right_password_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/home_authors_tab_container_screen/home_authors_tab_container_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/notification_news_promo_screen/notification_news_promo_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/forgot_password_create_new_password_screen/forgot_password_create_new_password_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/order_status_order_success_waiting_shipper_screen/order_status_order_success_waiting_shipper_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/order_status_order_received_rating_screen/order_status_order_received_rating_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/my_account_screen/my_account_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/home_set_location_screen/home_set_location_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/cart_confirm_order_visa_added_screen/cart_confirm_order_visa_added_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/forgot_password_success_create_new_password_screen/forgot_password_success_create_new_password_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/offers_screen/offers_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/sign_up_verification_code_phone_screen/sign_up_verification_code_phone_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/cart_confirm_order_screen/cart_confirm_order_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/forgot_password_verification_code_email_screen/forgot_password_verification_code_email_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/forgot_password_with_email_screen/forgot_password_with_email_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/sign_up_empte_state_screen/sign_up_empte_state_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/menu_search_screen/menu_search_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/forgot_password_verification_code_phone_screen/forgot_password_verification_code_phone_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/sign_up_verification_code_email_screen/sign_up_verification_code_email_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/forgot_password_with_phone_screen/forgot_password_with_phone_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/home_authors_inner_page_screen/home_authors_inner_page_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/order_history_screen/order_history_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/onboarding_four_screen/onboarding_four_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/sign_in_empty_state_screen/sign_in_empty_state_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/sign_in_active_state_screen/sign_in_active_state_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/detail_news_promo_screen/detail_news_promo_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/help_center_screen/help_center_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/your_favorites_screen/your_favorites_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/home_vendors_tab_container_screen/home_vendors_tab_container_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/notification_delivery_screen/notification_delivery_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/sign_up_input_phone_number_screen/sign_up_input_phone_number_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/sign_up_success_verification_screen/sign_up_success_verification_screen.dart';
import 'package:kamran_zafar_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String spashScreen = '/spash_screen';

  static const String notificationsEmptyScreen = '/notifications_empty_screen';

  static const String signUpActiveStateWrongPasswordScreen =
      '/sign_up_active_state_wrong_password_screen';

  static const String profilePage = '/profile_page';

  static const String signUpActiveStateRightPasswordScreen =
      '/sign_up_active_state_right_password_screen';

  static const String homeAuthorsPage = '/home_authors_page';

  static const String homeAuthorsTabContainerScreen =
      '/home_authors_tab_container_screen';

  static const String notificationNewsPromoScreen =
      '/notification_news_promo_screen';

  static const String forgotPasswordCreateNewPasswordScreen =
      '/forgot_password_create_new_password_screen';

  static const String orderStatusOrderSuccessWaitingShipperScreen =
      '/order_status_order_success_waiting_shipper_screen';

  static const String orderStatusOrderReceivedRatingScreen =
      '/order_status_order_received_rating_screen';

  static const String myAccountScreen = '/my_account_screen';

  static const String homeSetLocationScreen = '/home_set_location_screen';

  static const String cartConfirmOrderVisaAddedScreen =
      '/cart_confirm_order_visa_added_screen';

  static const String forgotPasswordSuccessCreateNewPasswordScreen =
      '/forgot_password_success_create_new_password_screen';

  static const String offersScreen = '/offers_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String signUpVerificationCodePhoneScreen =
      '/sign_up_verification_code_phone_screen';

  static const String cartConfirmOrderScreen = '/cart_confirm_order_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String forgotPasswordVerificationCodeEmailScreen =
      '/forgot_password_verification_code_email_screen';

  static const String forgotPasswordWithEmailScreen =
      '/forgot_password_with_email_screen';

  static const String signUpEmpteStateScreen = '/sign_up_empte_state_screen';

  static const String menuSearchScreen = '/menu_search_screen';

  static const String forgotPasswordVerificationCodePhoneScreen =
      '/forgot_password_verification_code_phone_screen';

  static const String signUpVerificationCodeEmailScreen =
      '/sign_up_verification_code_email_screen';

  static const String forgotPasswordWithPhoneScreen =
      '/forgot_password_with_phone_screen';

  static const String homeAuthorsInnerPageScreen =
      '/home_authors_inner_page_screen';

  static const String orderHistoryScreen = '/order_history_screen';

  static const String onboardingFourScreen = '/onboarding_four_screen';

  static const String signInEmptyStateScreen = '/sign_in_empty_state_screen';

  static const String signInActiveStateScreen = '/sign_in_active_state_screen';

  static const String detailNewsPromoScreen = '/detail_news_promo_screen';

  static const String helpCenterScreen = '/help_center_screen';

  static const String yourFavoritesScreen = '/your_favorites_screen';

  static const String homeVendorsPage = '/home_vendors_page';

  static const String homeVendorsTabContainerScreen =
      '/home_vendors_tab_container_screen';

  static const String notificationDeliveryScreen =
      '/notification_delivery_screen';

  static const String signUpInputPhoneNumberScreen =
      '/sign_up_input_phone_number_screen';

  static const String cartEmptyPage = '/cart_empty_page';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String menuPage = '/menu_page';

  static const String menuTabContainerPage = '/menu_tab_container_page';

  static const String signUpSuccessVerificationScreen =
      '/sign_up_success_verification_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    spashScreen: (context) => SpashScreen(),
    notificationsEmptyScreen: (context) => NotificationsEmptyScreen(),
    signUpActiveStateWrongPasswordScreen: (context) =>
        SignUpActiveStateWrongPasswordScreen(),
    signUpActiveStateRightPasswordScreen: (context) =>
        SignUpActiveStateRightPasswordScreen(),
    homeAuthorsTabContainerScreen: (context) => HomeAuthorsTabContainerScreen(),
    notificationNewsPromoScreen: (context) => NotificationNewsPromoScreen(),
    forgotPasswordCreateNewPasswordScreen: (context) =>
        ForgotPasswordCreateNewPasswordScreen(),
    orderStatusOrderSuccessWaitingShipperScreen: (context) =>
        OrderStatusOrderSuccessWaitingShipperScreen(),
    orderStatusOrderReceivedRatingScreen: (context) =>
        OrderStatusOrderReceivedRatingScreen(),
    myAccountScreen: (context) => MyAccountScreen(),
    homeSetLocationScreen: (context) => HomeSetLocationScreen(),
    cartConfirmOrderVisaAddedScreen: (context) =>
        CartConfirmOrderVisaAddedScreen(),
    forgotPasswordSuccessCreateNewPasswordScreen: (context) =>
        ForgotPasswordSuccessCreateNewPasswordScreen(),
    offersScreen: (context) => OffersScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    signUpVerificationCodePhoneScreen: (context) =>
        SignUpVerificationCodePhoneScreen(),
    cartConfirmOrderScreen: (context) => CartConfirmOrderScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    forgotPasswordVerificationCodeEmailScreen: (context) =>
        ForgotPasswordVerificationCodeEmailScreen(),
    forgotPasswordWithEmailScreen: (context) => ForgotPasswordWithEmailScreen(),
    signUpEmpteStateScreen: (context) => SignUpEmpteStateScreen(),
    menuSearchScreen: (context) => MenuSearchScreen(),
    forgotPasswordVerificationCodePhoneScreen: (context) =>
        ForgotPasswordVerificationCodePhoneScreen(),
    signUpVerificationCodeEmailScreen: (context) =>
        SignUpVerificationCodeEmailScreen(),
    forgotPasswordWithPhoneScreen: (context) => ForgotPasswordWithPhoneScreen(),
    homeAuthorsInnerPageScreen: (context) => HomeAuthorsInnerPageScreen(),
    orderHistoryScreen: (context) => OrderHistoryScreen(),
    onboardingFourScreen: (context) => OnboardingFourScreen(),
    signInEmptyStateScreen: (context) => SignInEmptyStateScreen(),
    signInActiveStateScreen: (context) => SignInActiveStateScreen(),
    detailNewsPromoScreen: (context) => DetailNewsPromoScreen(),
    helpCenterScreen: (context) => HelpCenterScreen(),
    yourFavoritesScreen: (context) => YourFavoritesScreen(),
    homeVendorsTabContainerScreen: (context) => HomeVendorsTabContainerScreen(),
    notificationDeliveryScreen: (context) => NotificationDeliveryScreen(),
    signUpInputPhoneNumberScreen: (context) => SignUpInputPhoneNumberScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    signUpSuccessVerificationScreen: (context) =>
        SignUpSuccessVerificationScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
