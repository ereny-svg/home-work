import 'package:assignment14/components/task_item.dart';
import 'package:assignment14/models/task_model.dart';
import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  final List<TaskModel> tasks;
  final Function(TaskModel) onDelete;

  const Tasks({super.key, required this.tasks, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return TaskItem(
          taskText: task.textOfTask,
          onpressed: () => onDelete(task),
        );
      },
    );
  }
}
