import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todozen/models/task.dart';

class TaskData extends ChangeNotifier {
  //int count = 0;
  final List<Task> _tasks = [Task(title: "Test")];
  int get count => _tasks.length;
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void create(String title) {
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void update(Task task) {
    task.toggleState();
    notifyListeners();
  }

  void remove(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
