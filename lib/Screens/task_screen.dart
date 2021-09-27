import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60.0, left: 30.0),
            child: CircleAvatar(
              child: Icon(
                Icons.list,
                size: 30.0,
              ),
              backgroundColor: Colors.white,
              radius: 30.0,
            ),
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              'ToDoo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              '12 Task',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
