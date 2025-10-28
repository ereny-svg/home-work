import 'package:assignment14/components/text_field_widget.dart';
import 'package:assignment14/models/to_do_model.dart';
import 'package:flutter/material.dart';

class ToAddTaskSection extends StatelessWidget {
  final Function() toAddTask;
  final ToDoModel toDoModel;
  const ToAddTaskSection({required this.toDoModel, required this.toAddTask});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            blurRadius: 4,
            offset: Offset(0, -3),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        spacing: 8,
        children: [
          Expanded(child: TextFieldWidget(toDoModel: toDoModel)),
          GestureDetector(
            onTap: () {
              if (toDoModel.textController.text.isNotEmpty) {
                toDoModel.tasks.add(toDoModel.textController.text);
                toDoModel.textController.clear();
                toAddTask();
              }
            },
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFDEE4E2),
              ),
              child: Icon(Icons.add, color: Colors.grey, size: 21),
            ),
          ),
        ],
      ),
    );
  }
}
