import 'package:flutter/material.dart';
import 'package:movie_quest/core/theme/colors/colors.dart';
import 'package:movie_quest/core/theme/icons/icons.dart';
import 'package:flutter_svg/svg.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.hint,
    required this.icon,
    this.isPassword = false,
    this.controller,
  });

  final String hint;
  final String icon;
  final bool isPassword;
  final TextEditingController? controller;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _isObscured,
      cursorColor: AppColors.textSecond,
      style: TextStyle(color: AppColors.textSecond),
      decoration: InputDecoration(
        hintText: widget.hint,
        prefixIcon: Padding(
          padding: EdgeInsets.all(14),
          child: SvgPicture.asset(widget.icon),
        ),

        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
                icon: Padding(
                  padding: EdgeInsets.all(4),
                  child: SvgPicture.asset(
                    _isObscured ? AppIcons.eyeClosed : AppIcons.eye,
                  ),
                ),
              )
            : null,

        fillColor: AppColors.background,
        filled: true,

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.hint),
          borderRadius: BorderRadius.circular(8),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.hint),
          borderRadius: BorderRadius.circular(8),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.error),
        ),
      ),
    );
  }
}
