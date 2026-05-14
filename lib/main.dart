import 'package:flutter/material.dart';
import 'core/themes/colors/colors.dart';

void main() {
  runApp(const MovieQuestApp());
}

class MovieQuestApp extends StatelessWidget {
  const MovieQuestApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: RegistrationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

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
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 160,
              ),
              child: Column(
                children: [
                  Expanded(child: RegistrationContainer()),
                  SizedBox(height: 39),
                  Text(
                    'Popa zalupa account? Pogna sosat',
                    style: TextStyle(color: AppColors.textDefault),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
      alignment: Alignment.center,
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppColors.container,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        children: [
          Text(
            'Movie Quest',
            style: TextStyle(
              color: AppColors.text,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
