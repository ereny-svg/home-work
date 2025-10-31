import 'package:flutter/material.dart';

class ZeroTasks extends StatelessWidget {
  const ZeroTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 250),
      child: Column(
        children: [
          Icon(Icons.task_alt_outlined, size: 80, color: Color(0xFFAACECB)),
          Text(
            "No tasks yet",
            style: TextStyle(
              fontSize: 22,
              color: Colors.black.withValues(alpha: 0.6),
            ),
          ),
          Text(
            "Add a task to get started",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black.withValues(alpha: 0.4),
            ),
          ),
        ],
      ),
    );
  }
}
