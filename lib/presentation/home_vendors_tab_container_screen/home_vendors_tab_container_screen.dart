import 'package:flutter/material.dart';import 'package:kamran_zafar_s_application1/core/app_export.dart';import 'package:kamran_zafar_s_application1/presentation/home_vendors_page/home_vendors_page.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_trailing_image.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';class HomeVendorsTabContainerScreen extends StatefulWidget {const HomeVendorsTabContainerScreen({Key? key}) : super(key: key);

@override HomeVendorsTabContainerScreenState createState() =>  HomeVendorsTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class HomeVendorsTabContainerScreenState extends State<HomeVendorsTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 5, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAutoLayoutVertical(context), SizedBox(height: 10.v), _buildTabview(context), SizedBox(height: 558.v, child: TabBarView(controller: tabviewController, children: [HomeVendorsPage(), HomeVendorsPage(), HomeVendorsPage(), HomeVendorsPage(), HomeVendorsPage()]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 34.v, bottom: 8.v), onTap: () {onTapArrowDown(context);}), centerTitle: true, title: AppbarSubtitle(text: "Vendords", margin: EdgeInsets.only(top: 32.v, bottom: 5.v)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIconSearch, margin: EdgeInsets.fromLTRB(24.h, 34.v, 24.h, 8.v))], styleType: Style.bgFill); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Container(width: 359.h, margin: EdgeInsets.only(left: 16.h), padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 17.v), decoration: AppDecoration.fillWhiteA, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Text("Our Vendors", style: theme.textTheme.bodyLarge), SizedBox(height: 3.v), Text("Vendords", style: CustomTextStyles.titleLargePrimary)])); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 56.v, width: 359.h, child: TabBar(controller: tabviewController, isScrollable: true, labelColor: appTheme.gray90001, labelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Open Sans', fontWeight: FontWeight.w700), unselectedLabelColor: appTheme.gray50001, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400), indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: Text("All")), Tab(child: Text("Books")), Tab(child: Text("Poems")), Tab(child: Text("Special for you")), Tab(child: Text("Stationary"))])); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapArrowDown(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeContainerScreen); } 
 }
