import 'package:flutter/material.dart';
import 'package:todoo/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'EAT 😋🍕🍔🍽 '),
    Task(name: 'SLEEP 🛌'),
    Task(name: 'CODE 👨‍💻'),
    Task(name: 'REPEAT 🔁'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}
