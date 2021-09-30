import 'package:flutter/material.dart';
import 'package:todoo/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Egg'),
    Task(name: 'Buy Bread'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
