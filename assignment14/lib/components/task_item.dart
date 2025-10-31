import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskItem extends StatefulWidget {
  final String taskText;
  final Function() onpressed;

  const TaskItem({super.key, required this.taskText, required this.onpressed});

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool completedTask = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFEFF5F3),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.4),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                completedTask = !completedTask;
              });
            },
            icon: Icon(
              completedTask ? Icons.check_box : Icons.check_box_outline_blank,
              color: completedTask ? const Color(0xFF01695B) : Colors.black,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.taskText,
                  style: TextStyle(
                    fontSize: 18,
                    color: completedTask
                        ? Colors.black.withValues(alpha: 0.6)
                        : Colors.black,
                    decoration: completedTask
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
                Text(
                  DateFormat('dd/MM/yyyy').format(DateTime.now()),
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withValues(alpha: 0.3),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: widget.onpressed,
            icon: const Icon(Icons.delete_outline, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
