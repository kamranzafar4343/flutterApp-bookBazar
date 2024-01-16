import '../home_authors_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeAuthorsPage extends StatefulWidget {
  const HomeAuthorsPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeAuthorsPageState createState() => HomeAuthorsPageState();
}

class HomeAuthorsPageState extends State<HomeAuthorsPage>
    with AutomaticKeepAliveClientMixin<HomeAuthorsPage> {
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
              SizedBox(height: 35.v),
              _buildUserProfile(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 43.h,
        ),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 28.v,
            );
          },
          itemCount: 8,
          itemBuilder: (context, index) {
            return UserprofileItemWidget();
          },
        ),
      ),
    );
  }
}
