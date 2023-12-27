import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todozen/models/providers/task_data.dart';
import 'package:todozen/screens/add_task_screen.dart';
import 'package:todozen/widgets/task_list.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => const AddTaskScreen());
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "TodoZen",
                      //style: Theme.of(context).textTheme.headlineLarge,
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Text(
                      "${Provider.of<TaskData>(context).count} tasks",
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    )
                  ])),
          const SizedBox(height: 20.0),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              height: 300,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: const TaskList(),
            ),
          )
        ],
      )),
    );
  }
}
