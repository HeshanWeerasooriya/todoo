import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoo/models/task_data.dart';
import 'package:todoo/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (bool checkboxState) {
                  taskData.updateTask(taskData.tasks[index]);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
