import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final Function(bool?) changeCompletionStatus;
  final Function() onLongPressed;

  const TaskListItem(
      {super.key,
      required this.title,
      required this.isCompleted,
      required this.changeCompletionStatus,
      required this.onLongPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressed,
      title: Text(
        title,
        style: TextStyle(
            decoration: isCompleted ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        onChanged: changeCompletionStatus,
        value: isCompleted,
      ),
    );
  }
}
