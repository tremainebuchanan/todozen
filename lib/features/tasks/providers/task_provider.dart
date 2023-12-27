import 'dart:collection';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:todozen/features/tasks/models/task.dart';

class TaskProvider extends ChangeNotifier {
  final String url = "https://jsonplaceholder.typicode.com/posts/";
  List<Task> _tasks = [];
  int get count => _tasks.length;
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
  TaskProvider();

  Future<void> get() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) throw Exception('Failed to fetch tasks');
      final List<dynamic> responseData = json.decode(response.body);
      //log(responseData[0]);
      _tasks = responseData.map((item) => Task.fromJson(item)).toList();
      notifyListeners();
    } catch (error) {
      log('Error: $error');
      throw 'Failed to load data';
    }
  }
}
