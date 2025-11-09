import 'package:assignment15/components/answer_card.dart';
import 'package:assignment15/models/question_model.dart';
import 'package:flutter/material.dart';

class QuestionCard extends StatefulWidget {
  final List<QuestionModel> questions;
  final int currentIndex;
  QuestionCard({required this.questions, required this.currentIndex});
  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  @override
  Widget build(BuildContext context) {
    final question = widget.questions[widget.currentIndex];
    return Expanded(
      child: Column(
        children: [
          Text(
            question.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(height: 32),
          for (int i = 0; i < question.answers.length; i++) ...[
            AnswerCard(
              onClicked: () {
                setState(() {
                  if (question.isMultiple) {
                    question.answers[i].isSelected =
                        !question.answers[i].isSelected;
                  } else {
                    for (var ans in question.answers) {
                      ans.isSelected = false;
                    }
                    question.answers[i].isSelected = true;
                  }
                });
              },
              text: question.answers[i].text,
              color: question.answers[i].isSelected
                  ? const Color(0xFFB8B2FF)
                  : Colors.white,
              icon: question.isMultiple
                  ? (question.answers[i].isSelected
                        ? Icons.check_circle_outline
                        : Icons.circle_outlined)
                  : (question.answers[i].isSelected
                        ? Icons.check_circle
                        : Icons.circle_outlined),
            ),
            const SizedBox(height: 8),
          ],
          SizedBox(height: 24),
          Spacer(flex: 3),
        ],
      ),
    );
  }
}
