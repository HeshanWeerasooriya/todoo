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
            padding: EdgeInsets.only(top: 100.0, left: 30.0),
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
            padding: EdgeInsets.only(left: 30.0, bottom: 30.0),
            child: Text(
              '12 Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ListView(
                children: [
                  ListTile(
                    title: Text('This is task'),
                    trailing: Checkbox(
                      onChanged: (bool? value) {},
                      value: true,
                    ),
                  ),
                  ListTile(
                    title: Text('This is task'),
                    trailing: Checkbox(
                      onChanged: (bool? value) {},
                      value: true,
                    ),
                  ),
                  ListTile(
                    title: Text('This is task'),
                    trailing: Checkbox(
                      onChanged: (bool? value) {},
                      value: true,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
