import 'package:flutter/material.dart';import 'package:kamran_zafar_s_application1/core/app_export.dart';import 'package:kamran_zafar_s_application1/presentation/cart_empty_page/cart_empty_page.dart';import 'package:kamran_zafar_s_application1/presentation/home_page/home_page.dart';import 'package:kamran_zafar_s_application1/presentation/menu_tab_container_page/menu_tab_container_page.dart';import 'package:kamran_zafar_s_application1/presentation/profile_page/profile_page.dart';import 'package:kamran_zafar_s_application1/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {HomeContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Category: return AppRoutes.menuTabContainerPage; case BottomBarEnum.Cart: return AppRoutes.cartEmptyPage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); case AppRoutes.menuTabContainerPage: return MenuTabContainerPage(); case AppRoutes.cartEmptyPage: return CartEmptyPage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
 }
