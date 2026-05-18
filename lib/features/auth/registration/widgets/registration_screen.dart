import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_quest/core/theme/colors/colors.dart';
import 'package:movie_quest/core/theme/icons/icons.dart';
import 'registration_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:movie_quest/router/app_router.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColors.background,
              elevation: 0,
              scrolledUnderElevation: 0,
              floating: true,
              pinned: false,
              snap: true,
              leading: IconButton(
                icon: SizedBox(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(AppIcons.backArrow),
                ),
                onPressed: () => context.pushRoute(const LoginRoute()),
              ),
              centerTitle: true,
              title: Text(
                'MovieQuest',
                style: TextStyle(
                  color: AppColors.text,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 40,
                ),
                child: Center(child: RegistrationContainer()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
