import 'package:assignment14/components/to_add_task_section.dart';
import 'package:assignment14/models/task_model.dart';
import 'package:assignment14/screens/tasks.dart';
import 'package:assignment14/screens/zero_tasks.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TaskModel> tasks = [];
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FBF9),
      appBar: AppBar(
        title: const Text(
          "My Tasks",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
        ),
        backgroundColor: const Color(0xFF9EF2E3),
      ),
      body: Column(
        children: [
          tasks.isNotEmpty
              ? Expanded(child: Tasks(tasks: tasks, onDelete: deleteTask))
              : const Expanded(child: ZeroTasks()),

          ToAddTaskSection(
            controller: textController,
            onAdd: addTask,
          ),
        ],
      ),
    );
  }

  void addTask() {
    if (textController.text.isNotEmpty) {
      TaskModel.addTask(tasks, textController.text);
      textController.clear();
      setState(() {});
    }
  }

  void deleteTask(TaskModel task) {
    TaskModel.removeTask(tasks, task);
    setState(() {});
  }
}
