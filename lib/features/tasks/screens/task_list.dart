import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todozen/features/tasks/providers/task_provider.dart';
import 'package:todozen/features/tasks/widget/task_list_widget.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  @override
  void initState() {
    super.initState();

    final taskProvider = Provider.of<TaskProvider>(context, listen: false);
    taskProvider.get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks",
            style:
                GoogleFonts.outfit(fontSize: 34, fontWeight: FontWeight.w500)),
      ),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: TaskListWidget(),
      ),
    );
  }
}
