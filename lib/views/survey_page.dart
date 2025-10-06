import 'package:atiex_4semestre/views/thanks_page.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({super.key});

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}


class _SurveyPageState extends State<SurveyPage> {

  void handleSelection(BuildContext context,String rating) async {
    await FirebaseFirestore.instance.collection('respostas').add({
      'avaliacao': rating,
      'horario': DateTime.now(),
    });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const ThankYouPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final icons = [
      Icons.sentiment_very_dissatisfied,
      Icons.sentiment_dissatisfied,
      Icons.sentiment_neutral,
      Icons.sentiment_satisfied,
      Icons.sentiment_very_satisfied,
    ];

    final colors = [
      Colors.red,
      Colors.deepOrange,
      Colors.amber,
      Colors.lightGreen,
      Colors.green,
    ];

    final satisfactionText = [
      "Muito Insatisfeito",
      "Insatisfeito",
      "Neutro",
      "Satisfeito",
      "Muito Satisfeito",
    ];

    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(icons.length, (index) {
              return PopScope(
                canPop: false,
                child: GestureDetector(
                  onTap: () => handleSelection(context,satisfactionText[index]),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Column(
                      children: [
                        Icon(icons[index], size: 110, color: colors[index]),
                        Text(
                          satisfactionText[index],
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
    );
  }
}
