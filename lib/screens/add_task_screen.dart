import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todozen/models/providers/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var newTaskTitle = "";

    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Text(
          "Add Task",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
        ),
        TextField(
          autofocus: true,
          onChanged: (value) {
            newTaskTitle = value;
          },
          //textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .create(newTaskTitle);
              Navigator.pop(context);
            },
            child: const Text("Add"))
      ]),
    );
  }
}
