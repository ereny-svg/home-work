import 'package:assignment14/components/task_item.dart';
import 'package:assignment14/models/to_do_model.dart';
import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  final ToDoModel toDoModel;
  const Tasks({required this.toDoModel});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
  itemCount: toDoModel.tasks.length,
  itemBuilder: (context, index) {
    return TaskItem(
      taskText: toDoModel.tasks[index],
    );
  },
);

  }
}
