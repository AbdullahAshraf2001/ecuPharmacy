import 'package:ecu/ui/utilites/app_colors.dart';
import 'package:flutter/material.dart';
class CustomButtomWidget extends StatelessWidget {
  String title;
  Function()? onPressed;
  CustomButtomWidget({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 16 , horizontal: 125),
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))
          ),
          onPressed: onPressed,
          child: Text(title, style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600 , color: AppColors.white),
          ),
      ),
    );
  }
}
