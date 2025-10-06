import 'package:flutter/material.dart';
import 'survey_page.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const SurveyPage()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: const Center(
        child: Text(
          'Obrigado pela sua avaliação!',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
