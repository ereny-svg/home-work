import 'package:assignment14/components/to_add_task_section.dart';
import 'package:assignment14/models/to_do_model.dart';
import 'package:assignment14/screens/tasks.dart';
import 'package:assignment14/screens/zero_tasks.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ToDoModel toDoModel = ToDoModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5FBF9),
      appBar: AppBar(
        title: Text(
          "My Tasks",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
        ),
        backgroundColor: Color(0xFF9EF2E3),
      ),
      body: Column(
        children: [
          toDoModel.tasks.isNotEmpty
              ? Expanded(child: Tasks(toDoModel: toDoModel))
              : Expanded(child: ZeroTasks()),

          ToAddTaskSection(
            toDoModel: toDoModel,
            toAddTask: () {
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
