import 'package:flutter/material.dart';
import 'package:movie_quest/core/theme/colors/colors.dart';
import 'package:movie_quest/core/theme/icons/icons.dart';
import 'package:movie_quest/core/widgets/widgets.dart';

class RegistrationContainer extends StatefulWidget {
  const RegistrationContainer({super.key});

  @override
  State<RegistrationContainer> createState() => _RegistrationContainerState();
}

class _RegistrationContainerState extends State<RegistrationContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppColors.container,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Create Account',
            style: TextStyle(
              color: AppColors.text,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            'Join the premier cinema experience',
            style: TextStyle(color: AppColors.text, fontSize: 16),
          ),
          const SizedBox(height: 49),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Full Name',
              style: TextStyle(
                color: AppColors.textSecond,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 7),
          AppTextField(hint: 'John Doe', icon: AppIcons.person),
          const SizedBox(height: 24),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Email Address',
              style: TextStyle(
                color: AppColors.textSecond,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 7),
          AppTextField(hint: '@example.com', icon: AppIcons.letter),
          const SizedBox(height: 24),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Password',
              style: TextStyle(
                color: AppColors.textSecond,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 7),
          AppTextField(hint: 'password', icon: AppIcons.lock, isPassword: true),
          const SizedBox(height: 40),
          AppGlowButton(
            text: 'Sign Up',
            radius: 10,
            height: 48,
            width: double.infinity,
            isIconStart: false,
            fontSize: 24,
            icon: AppIcons.goArrow,
            onPressed: () {
              print('Sign Up');
            },
          ),
          const SizedBox(height: 39),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                  color: AppColors.textDefault,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  print('Sign In');
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: AppColors.main,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
