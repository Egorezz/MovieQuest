import 'package:flutter/material.dart';
import 'package:movie_quest/core/theme/colors/colors.dart';
import 'package:movie_quest/core/theme/icons/icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_quest/core/widgets/widgets.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppColors.container,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        children: [
          SvgPicture.asset(AppIcons.film, height: 32),
          SizedBox(height: 7),
          Text(
            'MovieQuest',
            style: TextStyle(
              color: AppColors.text,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 7),
          Text(
            'Unlock the cinematic universe',
            style: TextStyle(color: AppColors.text, fontSize: 16),
          ),
          SizedBox(height: 49),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Email Adres',
              style: TextStyle(
                color: AppColors.textSecond,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.4,
              ),
            ),
          ),
          SizedBox(height: 7),
          AppTextField(hint: '@example.com', icon: AppIcons.letter),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Password',
                style: TextStyle(
                  color: AppColors.textSecond,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.4,
                ),
              ),
              GestureDetector(
                onTap: () {
                  //TODO: make route to registration_screen
                  print('Nav to forget password');
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: AppColors.text,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.4,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 7),
          AppTextField(hint: 'password', icon: AppIcons.lock, isPassword: true),
          SizedBox(height: 40),
          AppGlowButton(
            text: 'Sign In',
            radius: 10,
            height: 63,
            width: double.infinity,
            isIconStart: false,
            fontSize: 24,
            icon: AppIcons.goArrow,
            onPressed: () {
              //TODO: make authorization
              print('Sign In');
            },
          ),
        ],
      ),
    );
  }
}
