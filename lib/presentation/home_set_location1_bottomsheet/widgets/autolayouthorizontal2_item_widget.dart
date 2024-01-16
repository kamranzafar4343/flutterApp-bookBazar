import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Autolayouthorizontal2ItemWidget extends StatelessWidget {
  const Autolayouthorizontal2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Home",
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontSize: 12.fSize,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray20001,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            16.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
