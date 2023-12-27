import 'package:flutter/material.dart';
import 'dart:developer';

class Task extends ChangeNotifier {
  final String title;
  final int id;
  Task({required this.title, required this.id});

  factory Task.fromJson(Map<String, dynamic> json) {
    log("hit");
    return Task(title: json['title'], id: json['id']);
  }
}
