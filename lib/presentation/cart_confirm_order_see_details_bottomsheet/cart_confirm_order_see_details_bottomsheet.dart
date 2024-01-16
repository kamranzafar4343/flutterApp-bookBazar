import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CartConfirmOrderSeeDetailsBottomsheet extends StatelessWidget {
  const CartConfirmOrderSeeDetailsBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 56.h,
            child: Divider(
              color: appTheme.gray20001,
            ),
          ),
          SizedBox(height: 17.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Payment Details",
              style: CustomTextStyles.titleMediumOpenSansBold18,
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            padding: EdgeInsets.all(15.h),
            decoration: AppDecoration.outlineGray20001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAutoLayoutHorizontal(
                  context,
                  squidSweetAnd: "Price",
                  price: "87.10",
                ),
                SizedBox(height: 17.v),
                _buildAutoLayoutHorizontal(
                  context,
                  squidSweetAnd: "Squid Sweet and Sour Salad",
                  price: "19.99",
                ),
                SizedBox(height: 7.v),
                _buildAutoLayoutHorizontal(
                  context,
                  squidSweetAnd: "Japan Hainanese Sashimi",
                  price: "39.99",
                ),
                SizedBox(height: 7.v),
                _buildAutoLayoutHorizontal(
                  context,
                  squidSweetAnd: "Black Pepper Beef Lumpia",
                  price: "27.12",
                ),
                SizedBox(height: 15.v),
                Divider(),
                SizedBox(height: 16.v),
                _buildAutoLayoutHorizontal(
                  context,
                  squidSweetAnd: "Shipping",
                  price: "2",
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 16.v),
                _buildAutoLayoutHorizontal(
                  context,
                  squidSweetAnd: "Total Payment",
                  price: "89.10",
                ),
              ],
            ),
          ),
          SizedBox(height: 44.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAutoLayoutHorizontal(
    BuildContext context, {
    required String squidSweetAnd,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            squidSweetAnd,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray50001,
            ),
          ),
        ),
        Text(
          price,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray50001,
          ),
        ),
      ],
    );
  }
}
