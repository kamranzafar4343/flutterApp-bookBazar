import '../home_vendors_page/widgets/userprofile3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeVendorsPage extends StatefulWidget {
  const HomeVendorsPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeVendorsPageState createState() => HomeVendorsPageState();
}

class HomeVendorsPageState extends State<HomeVendorsPage>
    with AutomaticKeepAliveClientMixin<HomeVendorsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 12.v),
              _buildUserProfile(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 154.v,
          crossAxisCount: 3,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 12.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 9,
        itemBuilder: (context, index) {
          return Userprofile3ItemWidget();
        },
      ),
    );
  }
}
