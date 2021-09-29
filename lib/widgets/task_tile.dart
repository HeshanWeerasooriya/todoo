import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({Key? key, required this.isChecked, required this.taskTitle})
      : super(key: key);

  final bool isChecked;
  final String taskTitle;
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
        onChanged: (bool? value) {
          // setState(() {
          //   isChecked = value!;
          // });
        },
      ),
    );
  }
}
