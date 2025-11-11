import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class CustomButtom extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButtom({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          fixedSize: Size(double.infinity, 54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white
        ),
        onPressed: onPressed, child: Text(text)),
    );
  }
}
