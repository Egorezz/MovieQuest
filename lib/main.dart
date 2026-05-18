import 'package:flutter/material.dart';
import 'core/theme/fonts/fonts.dart';
import 'package:movie_quest/router/app_router.dart';

void main() {
  runApp(const MovieQuestApp());
}

class MovieQuestApp extends StatefulWidget {
  const MovieQuestApp({super.key});

  @override
  State<MovieQuestApp> createState() => _MovieQuestAppState();
}

class _MovieQuestAppState extends State<MovieQuestApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: AppFonts.mainFont),
      routerConfig: _router.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
