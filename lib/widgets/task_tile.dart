import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {Key? key,
      required this.taskTitle,
      required this.isChecked,
      required this.chechboxCallback})
      : super(key: key);

  final bool isChecked;
  final String taskTitle;
  final Function chechboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) {
          chechboxCallback(newValue);
        },
      ),
    );
  }
}
