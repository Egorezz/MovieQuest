import 'package:flutter/material.dart';
import 'package:movie_quest/core/theme/colors/colors.dart';
import 'package:flutter_svg/svg.dart';

class AppGlowButton extends StatelessWidget {
  const AppGlowButton({
    super.key,
    required this.text,
    required this.radius,
    required this.height,
    required this.width,
    required this.isIconStart,
    required this.fontSize,
    this.onPressed,
    required this.icon,
  });

  final String text;
  final String icon;
  final bool isIconStart;
  final double radius;
  final double height;
  final double width;
  final double fontSize;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.main,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(color: AppColors.main, blurRadius: 10, spreadRadius: 2),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.transparent,
          shadowColor: AppColors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isIconStart) SvgPicture.asset(icon),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                color: AppColors.hint,
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 10),
            if (!isIconStart) SvgPicture.asset(icon),
          ],
        ),
      ),
    );
  }
}
