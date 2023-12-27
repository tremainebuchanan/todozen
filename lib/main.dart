import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todozen/app_shell.dart';
import 'package:todozen/features/tasks/providers/task_provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => TaskProvider())],
      child: const MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppShell(),
    );
  }
}
