import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todozen/features/tasks/providers/task_provider.dart';

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
        builder: (BuildContext context, TaskProvider provider, _) {
      if (provider.count == 0) {
        return const Center(child: CircularProgressIndicator());
      } else {
        return ListView.builder(
          itemCount: provider.count,
          itemBuilder: (context, index) {
            final task = provider.tasks[index];
            return ListTile(title: Text(task.title));
          },
        );
      }
    });
  }
}
