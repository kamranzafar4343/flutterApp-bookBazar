import 'package:flutter/material.dart';import 'package:kamran_zafar_s_application1/core/app_export.dart';import 'package:kamran_zafar_s_application1/presentation/menu_page/menu_page.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';class MenuTabContainerPage extends StatefulWidget {const MenuTabContainerPage({Key? key}) : super(key: key);

@override MenuTabContainerPageState createState() =>  MenuTabContainerPageState();

 }

// ignore_for_file: must_be_immutable
class MenuTabContainerPageState extends State<MenuTabContainerPage> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 5, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 15.v), child: Column(children: [_buildTabview(context), SizedBox(height: 585.v, child: TabBarView(controller: tabviewController, children: [MenuPage(), MenuPage(), MenuPage(), MenuPage(), MenuPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconSearch, margin: EdgeInsets.only(left: 24.h, top: 34.v, bottom: 8.v), onTap: () {onTapIconSearch(context);}), centerTitle: true, title: AppbarSubtitle(text: "Category", margin: EdgeInsets.only(top: 35.v, bottom: 2.v)), actions: [Container(height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.fromLTRB(24.h, 34.v, 24.h, 8.v), child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgUserGray90001, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 8.adaptSize, width: 8.adaptSize, margin: EdgeInsets.only(left: 13.h, right: 3.h, bottom: 16.v), decoration: BoxDecoration(color: appTheme.red400, borderRadius: BorderRadius.circular(4.h), border: Border.all(color: appTheme.whiteA700, width: 1.h))))]))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return SizedBox(height: 28.v, width: 359.h, child: TabBar(controller: tabviewController, isScrollable: true, labelColor: appTheme.gray90001, unselectedLabelColor: appTheme.gray50001, tabs: [Tab(child: Text("All")), Tab(child: Text("Novels")), Tab(child: Text("Self Love")), Tab(child: Text("Science")), Tab(child: Text("Romantic"))])); } 
/// Navigates to the menuSearchScreen when the action is triggered.
onTapIconSearch(BuildContext context) { Navigator.pushNamed(context, AppRoutes.menuSearchScreen); } 
 }
