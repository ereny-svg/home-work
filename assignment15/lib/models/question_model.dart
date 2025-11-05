import 'package:assignment15/models/answer_model.dart';

class QuestionModel {
  final int index;
  final String text;
  final List<AnswerModel> answers;
  QuestionModel(this.index,this.text, this.answers);
}
