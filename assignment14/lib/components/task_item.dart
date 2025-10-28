import 'package:assignment14/models/to_do_model.dart';
import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String taskText;

  const TaskItem({required this.taskText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(28),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            blurRadius: 10,

            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFEFF5F3),
      ),
      alignment: Alignment.topCenter,
      child: Row(
        children: [
          Icon(Icons.check_box, color: Color(0xFF01695B)),
          Spacer(flex: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                taskText,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withValues(alpha: 0.6),
                ),
              ),
              Text(
                "Created : 7/11/2004",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withValues(alpha: 0.3),
                ),
              ),
            ],
          ),
          Spacer(flex: 8),
          Icon(Icons.delete_outline, color: Colors.red),
        ],
      ),
    );
  }
}
