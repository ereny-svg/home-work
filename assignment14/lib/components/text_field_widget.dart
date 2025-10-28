import 'package:assignment14/models/to_do_model.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final ToDoModel toDoModel;
  const TextFieldWidget({super.key,required this.toDoModel});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Add a new task...",
        filled: true,
        fillColor: Color(0xFFEEF4F2),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Color(0xFFEEF4F2)),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Color(0xFFEEF4F2)),
        ),
      ),
      controller: toDoModel.textController,
    );
  }
}
