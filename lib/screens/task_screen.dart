import 'package:flutter/material.dart';
import 'package:todoapp_flutter/widgets/tasks_list.dart';
import 'package:todoapp_flutter/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_flutter/models/task_data.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (contect) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
        elevation: 5.0,
        backgroundColor: Color(0xFFeb06ff),
        child: Icon(
          Icons.add_outlined,
          size: 32.0,
        ),
      ),
      backgroundColor: Color(0xFF3450a1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Color(0xFF6d8ad7),
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Color(0xFF3450a1),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "TODAY'S TASKS",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xFF6d8ad7)
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TasksList(),
          ),
        ],
      ),
    );
  }
}


