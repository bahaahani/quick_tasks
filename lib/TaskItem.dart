import 'package:flutter/material.dart';
import 'main.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final VoidCallback onToggle;
  final VoidCallback onDelete;

  const TaskItem({
    Key? key,
    required this.task,
    required this.onToggle,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          decoration: task.isCompleted
              ? TextDecoration.lineThrough
              : TextDecoration.none,
          color: task.isCompleted ? Colors.grey : Colors.black,
        ),
      ),
      onTap: onToggle,
      trailing: IconButton(
        icon: Icon(Icons.delete, color: Colors.red),
        onPressed: onDelete,
      ),
    );
  }
}
