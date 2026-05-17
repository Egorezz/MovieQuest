import 'package:flutter/material.dart';
import 'package:movie_quest/features/auth/registration/widgets/registration_screen.dart';
import 'core/theme/fonts/fonts.dart';

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
      home: RegistrationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
