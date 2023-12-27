import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todozen/models/providers/task_data.dart';
import 'package:todozen/widgets/task_list_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, data, child) {
      return ListView.builder(
          itemCount: data.count,
          itemBuilder: ((context, index) {
            final task = data.tasks[index];
            return TaskListItem(
              title: task.title,
              isCompleted: task.isComplete,
              changeCompletionStatus: (checkBoxValue) {
                data.update(task);
              },
              onLongPressed: () {
                data.remove(index);
              },
            );
          }));
    });
  }
}
