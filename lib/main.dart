import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_flutter/screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_flutter/models/task_data.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
