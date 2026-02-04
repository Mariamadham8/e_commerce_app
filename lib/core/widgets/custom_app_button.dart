import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  final IconData? icon;
  final bool iconAfterText;

  final double width;
  final double height;

  final Color backgroundColor;
  final Color textColor;

  const CustomAppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.iconAfterText = false,
    this.width = double.infinity,
    this.height = 55,
    this.backgroundColor = AppColors.blue,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: icon == null
            ? Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!iconAfterText) ...[
                    Icon(icon, color: textColor),
                    const SizedBox(width: 10),
                  ],
                  Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (iconAfterText) ...[
                    const SizedBox(width: 10),
                    Icon(icon, color: textColor),
                  ],
                ],
              ),
      ),
    );
  }
}
