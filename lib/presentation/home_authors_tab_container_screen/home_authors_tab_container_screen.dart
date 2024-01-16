import 'package:flutter/material.dart';import 'package:kamran_zafar_s_application1/core/app_export.dart';import 'package:kamran_zafar_s_application1/presentation/home_authors_page/home_authors_page.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/appbar_trailing_image.dart';import 'package:kamran_zafar_s_application1/widgets/app_bar/custom_app_bar.dart';class HomeAuthorsTabContainerScreen extends StatefulWidget {const HomeAuthorsTabContainerScreen({Key? key}) : super(key: key);

@override HomeAuthorsTabContainerScreenState createState() =>  HomeAuthorsTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class HomeAuthorsTabContainerScreenState extends State<HomeAuthorsTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 6, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 17.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Check the authors", style: theme.textTheme.bodyLarge)), SizedBox(height: 3.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Authors", style: CustomTextStyles.titleLargePrimary)), SizedBox(height: 19.v), _buildAutoLayoutVertical(context), SizedBox(height: 581.v, child: TabBarView(controller: tabviewController, children: [HomeAuthorsPage(), HomeAuthorsPage(), HomeAuthorsPage(), HomeAuthorsPage(), HomeAuthorsPage(), HomeAuthorsPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 34.v, bottom: 8.v), onTap: () {onTapArrowDown(context);}), centerTitle: true, title: AppbarSubtitle(text: "Authors", margin: EdgeInsets.only(top: 32.v, bottom: 5.v)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIconSearch, margin: EdgeInsets.fromLTRB(24.h, 34.v, 24.h, 8.v))]); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Container(height: 58.v, width: 359.h, margin: EdgeInsets.only(left: 16.h), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(height: 58.v, width: 359.h, decoration: BoxDecoration(color: appTheme.whiteA700))), SizedBox(height: 26.v, width: 351.h, child: TabBar(controller: tabviewController, isScrollable: true, labelColor: appTheme.gray50001, unselectedLabelColor: appTheme.gray90001, tabs: [Tab(child: Text("All")), Tab(child: Text("Poets")), Tab(child: Text("Playwrights")), Tab(child: Text("Novelists")), Tab(child: Text("Journalists")), Tab(child: Text("journalists"))]))])); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapArrowDown(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeContainerScreen); } 
 }
