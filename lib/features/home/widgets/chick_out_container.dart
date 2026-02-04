import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:e_commerce_app/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartSummaryContainer extends StatelessWidget {
  const CartSummaryContainer({
    super.key,
    required this.subTotal,
    required this.vat,
    required this.shippingFee,
  });

  final double subTotal;
  final double vat;
  final double shippingFee;

  double get total => subTotal + vat + shippingFee;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildRow(
            title: "Sub-total",
            value: "\$ ${subTotal.toStringAsFixed(0)}",
          ),
          const Gap(12),

          _buildRow(title: "VAT (%)", value: "\$ ${vat.toStringAsFixed(2)}"),
          const Gap(12),

          _buildRow(
            title: "Shipping fee",
            value: "\$ ${shippingFee.toStringAsFixed(0)}",
          ),

          const Gap(14),

          Divider(color: AppColors.grey),

          const Gap(14),

          _buildRow(
            title: "Total",
            value: "\$ ${total.toStringAsFixed(0)}",
            isTotal: true,
          ),
        ],
      ),
    );
  }

  Widget _buildRow({
    required String title,
    required String value,
    bool isTotal = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: isTotal
              ? AppFonts.font16w600
              : AppFonts.font14w500.copyWith(color: AppColors.darkgrey),
        ),
        Text(value, style: isTotal ? AppFonts.font16w600 : AppFonts.font14w600),
      ],
    );
  }
}
