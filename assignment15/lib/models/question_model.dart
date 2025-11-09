import 'package:assignment15/models/answer_model.dart';

class QuestionModel {
  final String text;
  final List<AnswerModel> answers;
  bool isMultiple;
  QuestionModel(this.isMultiple,this.text, this.answers);
}
