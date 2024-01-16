import 'package:flutter/material.dart';
import 'package:kamran_zafar_s_application1/core/app_export.dart';
import 'package:kamran_zafar_s_application1/widgets/custom_elevated_button.dart';

class OrderStatusOrderSuccessWaitingShipperScreen extends StatelessWidget {
  const OrderStatusOrderSuccessWaitingShipperScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              _buildProperty1Order(context),
              SizedBox(height: 18.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Do you want to cancel your order? ",
                      style: CustomTextStyles.bodyMediumGray50001_1,
                    ),
                    TextSpan(
                      text: "Cancel",
                      style: CustomTextStyles.titleSmallPrimarySemiBold_1,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 24.v),
              _buildAutoLayoutVertical(context),
              SizedBox(height: 78.v),
              CustomElevatedButton(
                text: "Order Status",
                margin: EdgeInsets.symmetric(horizontal: 5.h),
                buttonStyle: CustomButtonStyles.fillPrimaryContainer,
                buttonTextStyle: CustomTextStyles.titleMediumOpenSansPrimary,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProperty1Order(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 39.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Text(
            "Thankyou 👋",
            style: CustomTextStyles.bodyLargeGray90001_1,
          ),
          SizedBox(height: 5.v),
          Text(
            "Lorem ipsum dolor sit",
            style: CustomTextStyles.headlineSmallPrimary,
          ),
          SizedBox(height: 14.v),
          Text(
            "Order #2930541",
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Order Details",
            style: CustomTextStyles.titleMediumOpenSansBold18,
          ),
          SizedBox(height: 15.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 16.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: _buildAutoLayoutHorizontal(
                    context,
                    x: "1x",
                    theDaVinciCode: "Carrie Fisher",
                    price: "19.99",
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: _buildAutoLayoutHorizontal(
                    context,
                    x: "1x",
                    theDaVinciCode: "The Da vinci Code",
                    price: "39.99",
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: _buildAutoLayoutHorizontal(
                    context,
                    x: "1x",
                    theDaVinciCode: "Arcu ipsum feugiat leo odio ",
                    price: "27.12",
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: _buildAutoLayoutHorizontal1(
                    context,
                    shipping: "Subtotal",
                    price: "87.10",
                  ),
                ),
                SizedBox(height: 17.v),
                Divider(),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: _buildAutoLayoutHorizontal1(
                    context,
                    shipping: "Shipping",
                    price: "2",
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: _buildAutoLayoutHorizontal1(
                    context,
                    shipping: "Total Payment",
                    price: "89.10",
                  ),
                ),
                SizedBox(height: 9.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "Delivery in",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Text(
                      "10 - 15 mins",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Time",
                        style: theme.textTheme.bodyMedium,
                      ),
                      Text(
                        "15.24 - 15.39",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAutoLayoutHorizontal(
    BuildContext context, {
    required String x,
    required String theDaVinciCode,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          x,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.gray90001,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text(
            theDaVinciCode,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray90001,
            ),
          ),
        ),
        Spacer(),
        Text(
          price,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.gray90001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildAutoLayoutHorizontal1(
    BuildContext context, {
    required String shipping,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            shipping,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.gray90001,
            ),
          ),
        ),
        Text(
          price,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray90001,
          ),
        ),
      ],
    );
  }
}
