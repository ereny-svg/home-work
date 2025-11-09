import 'package:assignment15/components/custom_navigation_container.dart';
import 'package:assignment15/components/question_card.dart';
import 'package:assignment15/models/answer_model.dart';
import 'package:assignment15/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizQuestionScreen extends StatefulWidget {
  const QuizQuestionScreen({super.key});

  @override
  State<QuizQuestionScreen> createState() => _QuizQuestionScreenState();
}

class _QuizQuestionScreenState extends State<QuizQuestionScreen> {
  final List<QuestionModel> questions = [
    QuestionModel(
      false,
      "How would you describe your level of satisfaction with the healthcare system?",
      [
        AnswerModel("Strongly satisfied"),
        AnswerModel("Satisfied"),
        AnswerModel("Neutral"),
        AnswerModel("Not satisfied"),
      ],
      
    ),
    QuestionModel(
      false,
      "How often do you exercise per week?", [
      AnswerModel("Everyday"),
      AnswerModel("3-5 times"),
      AnswerModel("1-2 times"),
      AnswerModel("Never"),
    ]),
    QuestionModel(
      true,
      "What vitamins do you take?", [
      AnswerModel("Vitamin D3"),
      AnswerModel("Vitamin B"),
      AnswerModel("Zinc"),
      AnswerModel("Magnesium"),
    ]),
    QuestionModel(
      false,
      "How many hours do you sleep per night?", [
      AnswerModel("Less than 5 hours"),
      AnswerModel("5-7 hours"),
      AnswerModel("7-9 hours"),
      AnswerModel("More than 9 hours"),
    ]),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF060B26),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(height: 100),
            Container(
              width: 99,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF8E84FF),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                spacing: 6,
                children: [
                  Icon(Icons.autorenew, color: Color(0xFFB8B2FF), size: 22),
                  Text(
                    "Question ${currentIndex + 1}",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            QuestionCard(questions: questions, currentIndex: currentIndex),
            CustomNavigationContainer(
              goToNextQuestion: () {
                if (currentIndex < questions.length - 1) {
                  currentIndex++;
                  setState(() {});
                }
              },
              goToPreviousQuestion: () {
                if (currentIndex > 0) {
                  currentIndex--;
                  setState(() {});
                }
              },
            ),
            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
