import 'package:ecu/ui/utilites/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType type;

  const CustomTextFormField({
    required this.hintText,
    this.isPassword = false,
    required this.controller,
    required this.validator,
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        errorBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        disabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        focusedErrorBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        fillColor: AppColors.white,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
      ),
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal)
          .copyWith(color: AppColors.black),
      controller: controller,
      validator: validator,
      keyboardType: type,
      obscureText: isPassword,
    );
  }
}
