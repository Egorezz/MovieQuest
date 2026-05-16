import 'package:flutter/material.dart';
import 'core/theme/colors/colors.dart';
import 'core/theme/icons/icons.dart';
import 'core/theme/fonts/fonts.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MovieQuestApp());
}

class MovieQuestApp extends StatelessWidget {
  const MovieQuestApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: AppFonts.mainFont),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 40,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    LoginContainer(),
                    const SizedBox(height: 39),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: AppColors.textDefault,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            //TODO: make route to registration_screen
                            print('someshit');
                          },
                          child: Text(
                            'Sign Up',
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
                  print('someshit');
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
              print('signin');
            },
          ),
        ],
      ),
    );
  }
}

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
