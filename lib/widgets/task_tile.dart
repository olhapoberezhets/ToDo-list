import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final Function(bool?)? checkboxCallback;
  final Function()? longPressCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          child: Material(
            color: Color(0xFF041955),
            borderRadius: BorderRadius.circular(15.0),
            child: ListTile(
              onLongPress: longPressCallback,
              textColor: Color(0xFFb9c0d0),
              title: Text(
                taskTitle!,
                style: TextStyle(
                  decoration: isChecked! ? TextDecoration.lineThrough : null,
                ),
              ),
              trailing: Checkbox(
                activeColor: Color(0xFFeb06ff),
                side: BorderSide(
                  color: Color(0xFFb9c0d0),
                  width: 1.5,
                ),
                value: isChecked,
                onChanged: checkboxCallback,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


