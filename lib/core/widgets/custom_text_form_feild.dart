import 'package:e_commerce_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final String? labelText;
  final TextInputType keyboardType;
  final bool isPassword;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;

  const CustomTextFormField({
    super.key,
    this.controller,
    required this.hintText,
    this.labelText,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.validator,
    this.prefixIcon,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword ? obscureText : false,
      validator: widget.validator,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,

        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.blue,
                ),
              )
            : null,

        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.grey, width: 1.5),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.blue, width: 2),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.red, width: 2),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.red, width: 2),
        ),
      ),
    );
  }
}
